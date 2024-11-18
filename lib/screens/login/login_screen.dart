import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/text_field_ui_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneOrEmailControler = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Kiểm tra xem bàn phím có đang hiện hay không
    final bool isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;
    
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/background.png',
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
            // Chỉ hiện icon khi bàn phím không xuất hiện
            
              Positioned(
                child: Image.asset(
                  'assets/images/image_icon.png',
                ),
                top: 44,
                left: 5,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  // Điều chỉnh khoảng cách trên cùng dựa vào trạng thái bàn phím
                  SizedBox(
                    height: isKeyboardVisible ? 232 : 232,
                  ),
                  // Chỉ hiện logo khi bàn phím không xuất hiện
                  if (!isKeyboardVisible)
                    Image.asset(
                      'assets/images/logo_fb.png',
                      height: 80,
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldUI(
                    label: 'Phone or Email',
                    controller: _phoneOrEmailControler,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldUI(
                    label: 'Password',
                    isPassword: true,
                    controller: _passwordController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonUI(
                    ontap: () {
                      Navigator.pushNamed(context, AppRoutes.navBar);
                    },
                    child: Text(
                      'Login',
                      style: CustomTextStyle.textButtonWhite,
                    ),
                  ),
                   SizedBox(
                    height: isKeyboardVisible ? 10 : 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.forgotPass);
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFF384CFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                   SizedBox(
                    height: isKeyboardVisible ? 10 : 20,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          height: 1,
                          color: Color(0xFFAAAAAA),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF999999),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          height: 1,
                          color: Color(0xFFAAAAAA),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: isKeyboardVisible ? 10 : 20,
                  ),
                  ButtonUI(
                    ontap: () {
                      Navigator.pushNamed(context, AppRoutes.joinFB);
                    },
                    child: const Text(
                      'Create new Facebook account',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    color: 'white',
                    height: 30,
                    width: 200,
                    borderRadius: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}