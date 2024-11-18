import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Menu',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    ButtonUI(
                      ontap: () {},
                      child: Image.asset(
                        'assets/icons/find_icon.png',
                        color: Colors.black,
                      ),
                      color: 'grey',
                      width: 30,
                      height: 30,
                      borderRadius: 10,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [Text(
                  'Shortcut',
                  textAlign: TextAlign.left,
                ),],),
                SizedBox(
                  height: 5,
                ),
                ButtonUI(
                    borderRadius: 7,
                    height: 30,
                    width: double.maxFinite,
                    color: 'white',
                    colorBorder: false,
                    ontap: () {},
                    child: GradientMenuItem(
                        text: 'Job', iconPath: 'assets/icons/job_icon.png')),
                SizedBox(
                  height: 5,
                ),
                ButtonUI(
                    borderRadius: 7,
                    height: 30,
                    width: double.maxFinite,
                    color: 'white',
                    colorBorder: false,
                    ontap: () {},
                    child: GradientMenuItem(
                        text: 'COVID-19 information Center',
                        iconPath: 'assets/icons/job_icon.png')),
                SizedBox(
                  height: 5,
                ),
                ButtonUI(
                    borderRadius: 7,
                    height: 30,
                    width: double.maxFinite,
                    color: 'white',
                    colorBorder: false,
                    ontap: () {},
                    child: GradientMenuItem(
                        text: 'Marketplace',
                        iconPath: 'assets/icons/job_icon.png')),
                SizedBox(
                  height: 5,
                ),
                ButtonUI(
                    borderRadius: 7,
                    height: 30,
                    width: double.maxFinite,
                    color: 'white',
                    colorBorder: false,
                    ontap: () {},
                    child: GradientMenuItem(
                        text: 'Friends',
                        iconPath: 'assets/icons/job_icon.png')),
                SizedBox(
                  height: 5,
                ),
                ButtonUI(
                    borderRadius: 7,
                    height: 30,
                    width: double.maxFinite,
                    color: 'white',
                    colorBorder: false,
                    ontap: () {},
                    child: GradientMenuItem(
                        text: 'Events', iconPath: 'assets/icons/job_icon.png')),
                SizedBox(
                  height: 5,
                ),
                ButtonUI(
                    borderRadius: 7,
                    height: 30,
                    width: double.maxFinite,
                    color: 'white',
                    colorBorder: false,
                    ontap: () {},
                    child: GradientMenuItem(
                        text: 'Gaming', iconPath: 'assets/icons/job_icon.png')),
                SizedBox(
                  height: 5,
                ),
                ButtonUI(
                    borderRadius: 7,
                    height: 30,
                    width: double.maxFinite,
                    color: 'white',
                    colorBorder: false,
                    ontap: () {},
                    child: GradientMenuItem(
                        text: 'Weather',
                        iconPath: 'assets/icons/job_icon.png')),
                SizedBox(
                  height: 5,
                ),
                ButtonUI(
                    borderRadius: 7,
                    height: 30,
                    width: double.maxFinite,
                    color: 'white',
                    colorBorder: false,
                    ontap: () {},
                    child: GradientMenuItem(
                        text: 'Saved', iconPath: 'assets/icons/job_icon.png')),
                SizedBox(
                  height: 5,
                ),
                ButtonUI(
                  ontap: () {},
                  child: Text(
                    'See more',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF999999),
                    ),
                  ),
                  width: double.maxFinite,
                  color: 'white',
                  colorBorder: true,
                  borderRadius: 7,
                ),
                SizedBox(height: 10,),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Community resources'),
                  SizedBox(width: 10,),
                  Image.asset('assets/icons/Contacts.png'),
                ],),
                SizedBox(height: 10,),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Help & Support'),
                  SizedBox(width: 10,),
                  Image.asset('assets/icons/Lightbulb.png', width: 24,),
                ],),
                SizedBox(height: 10,),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Settings & Privacy'),
                  SizedBox(width: 10,),
                  Image.asset('assets/icons/setting.png', width: 24),
                ],)
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    ));
  }
}
