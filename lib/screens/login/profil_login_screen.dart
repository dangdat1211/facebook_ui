import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:flutter/material.dart';

class ProfilLoginScreen extends StatefulWidget {
  const ProfilLoginScreen({super.key});

  @override
  State<ProfilLoginScreen> createState() => _ProfilLoginScreenState();
}

class _ProfilLoginScreenState extends State<ProfilLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              SizedBox(
                child: Image.asset('assets/images/logo_fb.png', width: 50,),
              ),
              SizedBox(height: 70,),

              SizedBox(
                height: 65,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Row(

                        children: [
                          SizedBox(
                            height: 65,
                            width: 70,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                ClipRRect(borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/images/avatar1.png', height: 60, width: 60,),),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 22,
                                    width: 22,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(11),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1,

                                      )
                                    ),
                                    child: Text('7', style: TextStyle(
                                      color: Colors.white, 
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                )
                              ],
                            ),
                          ), 
                          SizedBox(width: 10,),
                          Text('Sanjay Shendy', style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                          ),)
                        ],
                      )
                    ),
                    Icon(Icons.more_vert, color: Colors.black,)
                  ],
                ),
              ),
              
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.maxFinite,
                child: GestureDetector(
                  onTap: () {
                    
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/add_icon.png',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Log into Another Account',
                        style: TextStyle(
                          color: Color(0xFF384CFF),
                          fontFamily: 'SF Pro Display',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.maxFinite,
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/find_icon.png',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Find your account',
                        style: TextStyle(
                          color: Color(0xFF384CFF),
                          fontFamily: 'SF Pro Display',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              ButtonUI(route: AppRoutes.joinFB, text: 'Create New Facebook Account')
            ],
          ),
        ),
      ),
    ));
  }
}
