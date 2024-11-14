import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/custom_appbar.dart';
import 'package:facebook_ui/widgets/text_field_ui_widget.dart';
import 'package:flutter/material.dart';

class SelectPasswordScreen extends StatefulWidget {
  const SelectPasswordScreen({super.key});

  @override
  State<SelectPasswordScreen> createState() => _SelectPasswordScreenState();
}

class _SelectPasswordScreenState extends State<SelectPasswordScreen> {
  TextEditingController _passControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        title: 'Password',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Center(
          child: Column(children: [
            SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Choose a password',
                    style: CustomTextStyle.mainText,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Create a password at least with 6 chaeacters.',
                    style: CustomTextStyle.seconText,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'It should be something others couldn’t guess.',
                    style: CustomTextStyle.seconText,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFieldUI(label: 'Password', controller: _passControler, isNumberOnly: true,),
                  SizedBox(height: 100,),
                  ButtonUI(route: AppRoutes.termAndPrivacy, text: 'Next')
          ],),
        ),
      ),
    ));
  }
}