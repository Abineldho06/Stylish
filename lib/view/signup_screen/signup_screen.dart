import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/view/global_widgets/custom_btm_section.dart';
import 'package:stylish_ui/view/global_widgets/custom_red_button.dart';
import 'package:stylish_ui/view/global_widgets/custom_text_field.dart';
import 'package:stylish_ui/view/singn_in_screen/sign_in_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 29),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create an \naccount',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.black,
                ),
              ),
              SizedBox(height: 33),

              CustomTextField(
                labeltext: 'Email or phone number',
                prefixicon: Icons.person,
              ),

              CustomTextField(
                obscuretext: true,
                suffixIcon: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.visibility_outlined,
                    color: ColorConstants.iconcolor,
                    size: 24,
                  ),
                ),
                labeltext: 'Password',
                prefixicon: Icons.lock_rounded,
              ),

              CustomTextField(
                obscuretext: true,
                suffixIcon: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.visibility_outlined,
                    color: ColorConstants.iconcolor,
                    size: 24,
                  ),
                ),
                labeltext: 'ConfirmPassword',
                prefixicon: Icons.lock,
                paddingbottom: 19,
              ),

              Text.rich(
                TextSpan(
                  text: 'By clicking the ',
                  style: TextStyle(color: ColorConstants.black, fontSize: 12),
                  children: [
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                        color: ColorConstants.primary,
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: ' button, you agree to the public offer',
                      style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              CustomRedButton(
                text: 'Create Account',
                paddingbottom: 40,
                paddingtop: 38,
              ),

              CustomBottomSection(),

              Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I Already Have an Account",
                    style: TextStyle(fontSize: 14, color: ColorConstants.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
