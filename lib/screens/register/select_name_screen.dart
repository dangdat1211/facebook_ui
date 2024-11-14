import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/custom_appbar.dart';
import 'package:facebook_ui/widgets/text_field_ui_widget.dart';
import 'package:flutter/material.dart';

class SelectNameScreen extends StatefulWidget {
  const SelectNameScreen({super.key});

  @override
  State<SelectNameScreen> createState() => _SelectNameScreenState();
}

class _SelectNameScreenState extends State<SelectNameScreen> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNametroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        title: 'Create Account',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'What is your name ?',
                style: CustomTextStyle.mainText,
              ),
              SizedBox(height: 10,),
              Text(
                'Enter the name you use in real life',
                style: CustomTextStyle.seconText,
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFieldUI(
                      label: 'First Name',
                      controller: _firstNameController,
                      width: 160,
                    ),
                
                    TextFieldUI(
                      label: 'Last Name',
                      controller: _lastNametroller,
                      width: 160,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100,),
              ButtonUI(route: AppRoutes.selectBirthday, text: 'Next')
            ],
          ),
        ),
      ),
    ));
  }
}
