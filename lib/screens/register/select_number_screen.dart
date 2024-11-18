import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/custom_appbar.dart';
import 'package:facebook_ui/widgets/text_field_ui_widget.dart';
import 'package:flutter/material.dart';

class SelectNumberScreen extends StatefulWidget {
  const SelectNumberScreen({super.key});

  @override
  State<SelectNumberScreen> createState() => _SelectNumberScreenState();
}

class _SelectNumberScreenState extends State<SelectNumberScreen> {

  TextEditingController _numberControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        title: 'Mobile Number',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Center(
          child: Column(children: [
            SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Enter your mobile number',
                    style: CustomTextStyle.mainText,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Enter the mobile number where you can be reached.',
                    style: CustomTextStyle.seconText,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'No one else will see this on your profile',
                    style: CustomTextStyle.seconText,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFieldUI(label: 'Mobile number', controller: _numberControler, isNumberOnly: true,),
                  SizedBox(height: 100,),
                  ButtonUI(ontap: () {
                  Navigator.pushNamed(context, AppRoutes.selectPass);
                }, child: Text('Next', style: CustomTextStyle.textButtonWhite,)),
          ],),
        ),
      ),
    ));
  }
}
