import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  TextEditingController _newPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(title: 'Reset Your Password'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text(
                'Create new password',
                style: CustomTextStyle.mainText,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'You will use this password to access your account.Enter a combination of at least six numbers, letters',
                  style: CustomTextStyle.seconText,
                  textAlign: TextAlign.center,
                ),
              ),
              TextField(
                controller: _newPassController,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                ),
              ),
              SizedBox(height: 20,),
              ButtonUI(ontap: () {
                 Navigator.pushNamed(context, AppRoutes.login);
              }, child: Text('Log in', style: CustomTextStyle.textButtonWhite,))
            ],
          ),
        ),
      ),
    ));
  }
}
