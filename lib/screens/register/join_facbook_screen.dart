import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:flutter/material.dart';

class JoinFacbookScreen extends StatefulWidget {
  const JoinFacbookScreen({super.key});

  @override
  State<JoinFacbookScreen> createState() => _JoinFacbookScreenState();
}

class _JoinFacbookScreenState extends State<JoinFacbookScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          leading: IconButton(
            icon: Icon(Icons.chevron_left, weight: 7,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          title: Text(
            'Create Account',
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: 14,
              fontWeight: FontWeight.w400,
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
          titleTextStyle: TextStyle(color: Colors.black),
        ),
        body: Center(
          child: Padding(
            
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                SizedBox(height: 20,),
            
                Image.asset('assets/images/banner.png'),
                SizedBox(height: 100,),
                
                Text('Join Facebook', style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),),
            
                SizedBox(height: 20,),
                Text('We will hell you ', style:TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color:  Color(0xFF999999)
                ),),
                Text('create a new account in a few easy steps', style:TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color:  Color(0xFF999999)

                ),),
            
                SizedBox(height: 50,),
                ButtonUI(ontap: () {
                  Navigator.pushNamed(context, AppRoutes.selectName);
                }, child: Text('Next', style: CustomTextStyle.textButtonWhite,)),
            
                Spacer(),
            
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.login);
                  },
                  child: Text('Already have an account ?', style:TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color:Color(0xFF384CFF)

                ),),
                )
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}