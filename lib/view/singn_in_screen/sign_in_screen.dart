import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/view/forgot_screen/forgot_pass_screen.dart';
import 'package:stylish_ui/view/global_widgets/custom_btm_section.dart';
import 'package:stylish_ui/view/global_widgets/custom_red_button.dart';
import 'package:stylish_ui/view/global_widgets/custom_text_field.dart';
import 'package:stylish_ui/view/signup_screen/signup_screen.dart';

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
                suffixIcon: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.visibility_outlined,
                    color: ColorConstants.iconcolor,
                    size: 24,
                  ),
                ),
                paddingbottom: 9,
              ),

              Align(
                alignment: AlignmentGeometry.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPassScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      color: ColorConstants.primary,
                    ),
                  ),
                ),
              ),

              CustomRedButton(text: 'Login', paddingtop: 32, paddingbottom: 75),

              CustomBottomSection(),
              Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create An Account",
                    style: TextStyle(fontSize: 14, color: ColorConstants.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text(
                      'Sign Up',
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
