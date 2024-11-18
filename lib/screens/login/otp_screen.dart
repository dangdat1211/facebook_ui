import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController _codeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _codeController.addListener(() {
      String text = _codeController.text.replaceAll(" ", ""); // Xóa khoảng trắng
      if (text.length <= 6) {
        String newText = text.split("").join(" ").trim(); // Thêm khoảng trắng giữa các số
        _codeController.value = TextEditingValue(
          text: newText,
          selection: TextSelection.collapsed(offset: newText.length),
        );
      }
    });
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Find Your Account'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  'Enter the code we sent to',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Sanjayshendy123@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'We sent 6 digit code to your email address.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF999999),
                  ),
                ),
                SizedBox(height: 30),
                Theme(
                  data: Theme.of(context).copyWith(
                    textSelectionTheme: TextSelectionThemeData(
                      selectionColor: Colors.blue.withOpacity(0.3),
                      cursorColor: Colors.blue,
                    ),
                  ),
                  child: TextField(
                    controller: _codeController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 11, 
                    style: TextStyle(
                      fontSize: 24,
                      letterSpacing: 8, 
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter code",
                      
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF999999),
                        letterSpacing: 0, 
                      ),
                      counterText: "", // Ẩn counter
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(6),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                ButtonUI(
                  ontap: () {
                    String code = _codeController.text.replaceAll(" ", "");
                    print('OTP entered: $code');

                    Navigator.pushNamed(context, AppRoutes.newPass);
                  },
                  child: Text(
                    'Continue',
                    style: CustomTextStyle.textButtonWhite,
                  ),
                ),

                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment:  MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/icons/email_icon.png'), 
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: () {},
                        child: Text('Send email again', style: CustomTextStyle.normalText,),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment:  MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/icons/sms_icon.png'), 
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: () {},
                        child: Text(('Send email again'),  style: CustomTextStyle.normalText,),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}