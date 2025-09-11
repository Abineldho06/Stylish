import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/core/constants/image_constants.dart';
import 'package:stylish_ui/view/home_screen/home_screen.dart';
import 'package:stylish_ui/view/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //The initState is used to create an initial state.
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          spacing: 9,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstants.logo, width: 124.99, height: 100),
            Text(
              'Stylish',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: ColorConstants.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
