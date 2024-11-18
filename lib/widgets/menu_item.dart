import 'package:flutter/material.dart';

class GradientMenuItem extends StatelessWidget {
  final String text;
  final String iconPath;

  const GradientMenuItem({
    Key? key,
    required this.text,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Color(0xFF384CFF), Color(0xFF00A3FF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.white, 
            ),
          ),
        ),
        const SizedBox(width: 10),
        Image.asset(iconPath),
      ],
    );
  }
}
