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
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  final emailformkey = GlobalKey<FormState>();
  final passformkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29.0, vertical: 19.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                  controller: emailcontroller,
                  formkey: emailformkey,
                  validator: (value) {
                    if (value != null && value.length >= 3) {
                      return null;
                    } else {
                      return 'Enter a valid Email or username';
                    }
                  },
                ),

                CustomTextField(
                  formkey: passformkey,
                  controller: passcontroller,
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
                  validator: (value) {
                    if (value != null && value.length >= 6) {
                      return null;
                    } else {
                      return 'Enter a valid password';
                    }
                  },
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

                CustomRedButton(
                  text: 'Login',
                  paddingtop: 32,
                  paddingbottom: 75,
                  buttononTap: () {
                    if (emailformkey.currentState!.validate() &&
                        passformkey.currentState!.validate())
                      ;
                  },
                ),

                CustomBottomSection(
                  leadingtext: 'Create An Account',
                  option: 'Sign UP',
                  buttononTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
