import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/view/global_widgets/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29.0, vertical: 19.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome \nBack!',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.black,
                ),
              ),

              SizedBox(height: 36),
              CustomTextField(
                labeltext: 'Email or phone number',
                prefixicon: Icons.person,
              ),

              CustomTextField(
                obscuretext: true,
                labeltext: 'Password',
                prefixicon: Icons.lock,
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: ColorConstants.iconcolor,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
