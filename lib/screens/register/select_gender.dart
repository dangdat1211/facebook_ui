import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
              title: 'Gender',
            ),
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                    child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'What your gender?',
                    style: CustomTextStyle.mainText,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'You can change who sees your gender on your profile later.',
                    style: CustomTextStyle.seconText,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title:
                            const Text('Female', style: CustomTextStyle.text14),
                        trailing: Transform.translate(
                          offset: const Offset(0, 0),
                          child: Radio<String>(
                            value: 'female',
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                selectedGender = value;
                              });
                            },
                            activeColor: const Color(0xFF384CFF),
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                      const Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.black12,
                      ),
                      ListTile(
                        title:
                            const Text('Male', style: CustomTextStyle.text14),
                        trailing: Transform.translate(
                          offset: const Offset(0, 0),
                          child: Radio<String>(
                            value: 'male',
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                selectedGender = value;
                              });
                            },
                            activeColor: const Color(0xFF384CFF),
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                      const Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.black12,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ListTile(
                        title:
                            const Text('Custom', style: CustomTextStyle.text14),
                        subtitle: Text(
                            'Select custom to choose another gender,\nor if you\'d rather not say',
                            style: CustomTextStyle.text10),
                        trailing: Transform.translate(
                          offset: const Offset(0, -15),
                          child: Radio<String>(
                            value: 'custom',
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                selectedGender = value;
                              });
                            },
                            activeColor: const Color(0xFF384CFF),
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                      const Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                SizedBox(height: 80,),
                ButtonUI(ontap: () {Navigator.pushNamed(context, AppRoutes.selectNumber);
                  
                }, child: Text('Next', style: CustomTextStyle.textButtonWhite,)),
                ])))));
  }
}
