import 'package:facebook_ui/routes/app_routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRoutes.intro);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset('assets/images/logo_fb.png', width: 100,),
            
            const SizedBox(height: 10),
            const Text(
              "facebook",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1,
              ),
            ),
            
            const Spacer(),
            
            const Text(
              "from",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
            
            // Meta logo
            const SizedBox(height: 5),
            Image.asset(
              'assets/images/logo_meta.png', 
              width: 100,
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    )
  );
  }
}
