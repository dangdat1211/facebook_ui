import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonUI extends StatefulWidget {
  final GestureTapCallback ontap;
  final Widget child;
  final String color;
  final bool colorBorder;
  final double? height;
  final double? width;
  final double borderRadius;

  const ButtonUI({
    super.key,
    required this.ontap,
    required this.child,
    this.color = 'blue',
    this.colorBorder = false,
    this.height,
    this.width,
    this.borderRadius = 15,
  });

  @override
  State<ButtonUI> createState() => _ButtonUIState();
}

class _ButtonUIState extends State<ButtonUI> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height: widget.height ?? 40,
        width: widget.width ?? 300,
        decoration: widget.color == 'white'
            ? BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(widget.borderRadius),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.transparent, Colors.transparent],
                ),
                border: widget.colorBorder
                    ? Border.all(
                        color: Color(0xFF555555),
                        width: 2,
                      )
                    : GradientBoxBorder(
                        gradient: LinearGradient(
                          begin: Alignment(0.0, 0),
                          end: Alignment(1.0, 0),
                          colors: [Color(0xFF384CFF), Color(0xFF00A3FF)],
                        ),
                        width: 2,
                      ),
              )
            : BoxDecoration(
                boxShadow: widget.color == 'blue'
                    ? [
                        BoxShadow(
                          color: Color(0x801C78FF),
                          spreadRadius: 0,
                          blurRadius: 9,
                          offset: Offset(0, 4),
                        )
                      ]
                    : [],
                borderRadius: BorderRadius.circular(widget.borderRadius),
                color: widget.color == 'grey' ? Color(0xFFEEEEEE) : null,
                gradient: widget.color == 'blue'
                    ? LinearGradient(
                        begin: Alignment(0.0, 0),
                        end: Alignment(1.0, 0),
                        colors: [Color(0xFF384CFF), Color(0xFF00A3FF)],
                      )
                    : null,
              ),
        child: Center(
          child: widget.child,
        ),
      ),
    );
  }
}

class GradientBoxBorder extends BoxBorder {
  final LinearGradient gradient;
  final double width;

  const GradientBoxBorder({
    required this.gradient,
    this.width = 1.0,
  });

  @override
  BorderSide get top => BorderSide(width: width);

  @override
  BorderSide get right => BorderSide(width: width);

  @override
  BorderSide get bottom => BorderSide(width: width);

  @override
  BorderSide get left => BorderSide(width: width);

  @override
  void paint(
    Canvas canvas,
    Rect rect, {
    TextDirection? textDirection,
    BoxShape shape = BoxShape.rectangle,
    BorderRadius? borderRadius,
  }) {
    final Paint paint = Paint()
      ..strokeWidth = width
      ..style = PaintingStyle.stroke;

    final RRect rrect = borderRadius?.toRRect(rect) ?? RRect.fromRectXY(rect, 0, 0);
    final Path path = Path()..addRRect(rrect);

    // Paint gradient border
    final PathMetrics pathMetrics = path.computeMetrics();
    for (PathMetric pathMetric in pathMetrics) {
      final Path extractPath = pathMetric.extractPath(0.0, pathMetric.length);
      final Shader shader = gradient.createShader(rect);
      paint.shader = shader;
      canvas.drawPath(extractPath, paint);
    }
  }

  @override
  ShapeBorder scale(double t) {
    return GradientBoxBorder(
      width: width * t,
      gradient: gradient,
    );
  }

  @override
  bool get isUniform => true;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(width);
}