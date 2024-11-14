import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; // Thuộc tính text cho AppBar
  
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.chevron_left, weight: 7),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'SF Pro Display',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.0),
        child: Container(
          color: Color(0xFFAAAAAA),
          height: 1.0,
        ),
      ),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 1); // +1 cho divider
}