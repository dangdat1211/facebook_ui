import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/custom_appbar.dart';
import 'package:facebook_ui/widgets/text_field_ui_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordEmailScreen extends StatefulWidget {
  const ForgotPasswordEmailScreen({super.key});

  @override
  State<ForgotPasswordEmailScreen> createState() => _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      appBar: CustomAppBar(title: 'Find Your Account'),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text('Enter your email address', style:  CustomTextStyle.mainText,),
                SizedBox(height: 30,),
                TextFieldUI(label: '',  controller: _emailController, showFloatingLabel: true,),
                SizedBox(height: 30,),
                ButtonUI(ontap: () {
                  Navigator.pushNamed(context, AppRoutes.otp);
                }, child: Text('Find Your Account', style: CustomTextStyle.textButtonWhite,)),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.forgotPass);
                  },
                  child: Text('Search by number insted', style: TextStyle(
                    color: Color(0xFF384CFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w500
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