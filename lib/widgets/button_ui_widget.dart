import 'package:flutter/material.dart';

class ButtonUI extends StatefulWidget {
  final String route; 
  final String text; 
  
  const ButtonUI({
    super.key,
    required this.route, 
    required this.text, 
  });

  @override
  State<ButtonUI> createState() => _ButtonUIState();
}

class _ButtonUIState extends State<ButtonUI> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
              Navigator.pushNamed(context, widget.route);
            },
      child: Container(
        height: 40,
        width: 300,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0x801C78FF),
                  spreadRadius: 0,
                  blurRadius: 9,
                  offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                begin: Alignment(0.0, 0),
                end: Alignment(1.0, 0),
                colors: [Color(0xFF384CFF), Color(0xFF00A3FF)])),
            child: Center(
              child: Text(
                widget.text, 
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'SF Pro Display'),
              ),
            )),
    );
  }
}