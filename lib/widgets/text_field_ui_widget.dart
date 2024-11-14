import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldUI extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final double? width;
  final bool showFloatingLabel;
  final bool isNumberOnly; // Thêm thuộc tính mới

  const TextFieldUI({
    Key? key,
    required this.label,
    this.controller,
    this.width,
    this.showFloatingLabel = true,
    this.isNumberOnly = false, // Mặc định là false
  }) : super(key: key);

  // Hàm định dạng số với khoảng cách sau mỗi 5 số
  String _formatNumberWithSpaces(String text) {
    text = text.replaceAll(' ', ''); // Xóa khoảng trắng hiện có
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
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.bottom,
        
        // Thêm cấu hình cho việc nhập số
        keyboardType: isNumberOnly ? TextInputType.number : TextInputType.text,
        inputFormatters: isNumberOnly ? [
          FilteringTextInputFormatter.digitsOnly,
          TextInputFormatter.withFunction((oldValue, newValue) {
            // Xử lý định dạng số
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
          labelText: label,
          contentPadding: EdgeInsets.only(bottom: 2),
          labelStyle: TextStyle(
            color: Color(0xFF999999),
            fontSize: 14,
          ),
          floatingLabelStyle: TextStyle(
            color: Color(0xFF384CFF),
            fontSize: 14,
          ),
          floatingLabelBehavior: showFloatingLabel 
              ? FloatingLabelBehavior.auto 
              : FloatingLabelBehavior.never,
          isDense: true,
          suffixIcon: IconButton(
            icon: Icon(Icons.close, color: Colors.grey),
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            onPressed: () {
              controller?.clear();
            },
          ),
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