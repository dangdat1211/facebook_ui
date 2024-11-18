import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldUI extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final double? width;
  final bool showFloatingLabel;
  final bool isNumberOnly;
  final bool showClearButton;
  final bool isPassword;

  const TextFieldUI({
    Key? key,
    required this.label,
    this.controller,
    this.width,
    this.showFloatingLabel = true,
    this.isNumberOnly = false,
    this.showClearButton = true,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<TextFieldUI> createState() => _TextFieldUIState();
}

class _TextFieldUIState extends State<TextFieldUI> {
  bool _showPassword = false;
  bool _hasText = false;

  String _formatNumberWithSpaces(String text) {
    text = text.replaceAll(' ', '');
    String result = '';
    
    for (int i = 0; i < text.length; i++) {
      if (i > 0 && i % 5 == 0) {
        result += ' ';
      }
      result += text[i];
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
    _hasText = widget.controller?.text.isNotEmpty ?? false;
    widget.controller?.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    if (mounted) {
      setState(() {
        _hasText = widget.controller?.text.isNotEmpty ?? false;
        // Reset showPassword state when text is cleared
        if (!_hasText) {
          _showPassword = false;
        }
      });
    }
  }

  Widget? _buildSuffixIcon() {
    // Nếu là trường password và có text
    if (widget.isPassword && _hasText) {
      return IconButton(
        icon: Icon(
          _showPassword ? Icons.visibility : Icons.visibility_off,
          color: Colors.grey,
        ),
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(),
        onPressed: () {
          setState(() {
            _showPassword = !_showPassword;
          });
        },
      );
    }
    
    // Nếu không phải password và có showClearButton và có text
    if (!widget.isPassword && widget.showClearButton && _hasText) {
      return IconButton(
        icon: Icon(Icons.close, color: Colors.grey),
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(),
        onPressed: () {
          widget.controller?.clear();
        },
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: TextField(
        controller: widget.controller,
        textAlignVertical: TextAlignVertical.bottom,
        obscureText: widget.isPassword && !_showPassword,
        
        keyboardType: widget.isNumberOnly ? TextInputType.number : TextInputType.text,
        inputFormatters: widget.isNumberOnly ? [
          FilteringTextInputFormatter.digitsOnly,
          TextInputFormatter.withFunction((oldValue, newValue) {
            if (newValue.text.isEmpty) return newValue;
            
            final formattedText = _formatNumberWithSpaces(newValue.text);
            return TextEditingValue(
              text: formattedText,
              selection: TextSelection.collapsed(
                offset: formattedText.length
              ),
            );
          }),
        ] : null,

        decoration: InputDecoration(
          labelText: widget.label,
          contentPadding: EdgeInsets.only(bottom: 2),
          labelStyle: TextStyle(
            color: Color(0xFF999999),
            fontSize: 14,
          ),
          floatingLabelStyle: TextStyle(
            color: Color(0xFF384CFF),
            fontSize: 14,
          ),
          floatingLabelBehavior: widget.showFloatingLabel 
              ? FloatingLabelBehavior.auto 
              : FloatingLabelBehavior.never,
          isDense: true,
          suffixIcon: _buildSuffixIcon(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFAAAAAA),
              width: 1.0,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF384CFF),
              width: 1.0,
            ),
          ),
        ),
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}