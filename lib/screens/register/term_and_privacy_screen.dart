import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class TermAndPrivacyScreen extends StatefulWidget {
  const TermAndPrivacyScreen({super.key});

  @override
  State<TermAndPrivacyScreen> createState() => _TermAndPrivacyScreenState();
}

class _TermAndPrivacyScreenState extends State<TermAndPrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        title: 'Term & Privacy',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Finishing signing up',
                style: CustomTextStyle.mainText,
              ),
              SizedBox(height: 10),
              Text(
                'By tapping Sign up, you agree to our',
                style: CustomTextStyle.seconText,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Terms, Data Policy',
                      style: CustomTextStyle.textBlue,
                    ),
                  ),
                  Text(' và ', style: CustomTextStyle.seconText,),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Terms, Data Policy',
                      style: CustomTextStyle.textBlue,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 150,
              ),
              ButtonUI(ontap: () {
                  Navigator.pushNamed(context, AppRoutes.login);
                }, child: Text('Sign up', style: CustomTextStyle.textButtonWhite,)),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {

                },
                child: Text('Sign up without updating my contact', style: CustomTextStyle.textBlue,),
              ),
              Spacer(),
              Text('The Facebook company is now Meta. While our company name is changing, we are continuing to offer the same products, includingthe Facebook app from Meta. Our Data Policy and Terms of Service remain in effect, and this name change does not affect how we use or share data. Learn more about Meta and our vision for the metaverse.',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black), textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    ));
  }
}
