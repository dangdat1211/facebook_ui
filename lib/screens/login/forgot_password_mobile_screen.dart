import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/custom_appbar.dart';
import 'package:facebook_ui/widgets/text_field_ui_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  TextEditingController _numberController = TextEditingController(); 
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
                Text('Enter your number phone', style:  CustomTextStyle.mainText,),
                SizedBox(height: 30,),
                TextFieldUI(label: '', isNumberOnly: true, controller: _numberController, showFloatingLabel: true,),
                SizedBox(height: 30,),
                ButtonUI(ontap: () {
                  Navigator.pushNamed(context, AppRoutes.otp);
                }, child: Text('Find Your Account', style: CustomTextStyle.textButtonWhite,)),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.forgotPassEmail);
                  },
                  child: Text('Search by email insted', style: TextStyle(
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