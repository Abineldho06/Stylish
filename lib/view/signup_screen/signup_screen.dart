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
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController repasscontroller = TextEditingController();

  final emailformkey = GlobalKey<FormState>();
  final passformkey = GlobalKey<FormState>();
  final repassformkey = GlobalKey<FormState>();

  FocusNode emailfocusNode = FocusNode();
  FocusNode passfocusNode = FocusNode();
  FocusNode repassfocusNode = FocusNode();

  bool passcurrentstate = true;
  bool repasscurrentstate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 29),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                  focusNode: emailfocusNode,
                  formkey: emailformkey,
                  validator: (value) {
                    if (value != null && value.contains('@')) {
                      return null;
                    } else {
                      return 'Enter a valid Email';
                    }
                  },
                  onTapOutside: (_) {
                    emailfocusNode.unfocus();
                  },
                ),

                CustomTextField(
                  obscuretext: passcurrentstate,
                  controller: passcontroller,
                  suffixIcon: TextButton(
                    onPressed: () {
                      passcurrentstate = !passcurrentstate;
                      setState(() {});
                    },
                    child: Icon(
                      passcurrentstate
                          ? Icons.visibility_outlined
                          : Icons.visibility_off,
                      color: ColorConstants.iconcolor,
                      size: 24,
                    ),
                  ),
                  labeltext: 'Password',
                  prefixicon: Icons.lock_rounded,
                  focusNode: passfocusNode,
                  formkey: passformkey,
                  validator: (value) {
                    if (value != null && value.length >= 6) {
                      return null;
                    } else {
                      return 'Enter a valid password';
                    }
                  },
                  onTapOutside: (_) {
                    passfocusNode.unfocus();
                  },
                ),

                CustomTextField(
                  obscuretext: repasscurrentstate,
                  suffixIcon: TextButton(
                    onPressed: () {
                      repasscurrentstate = !repasscurrentstate;
                      setState(() {});
                    },
                    child: Icon(
                      repasscurrentstate
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: ColorConstants.iconcolor,
                      size: 24,
                    ),
                  ),
                  labeltext: 'ConfirmPassword',
                  prefixicon: Icons.lock,
                  paddingbottom: 19,
                  focusNode: repassfocusNode,
                  formkey: repassformkey,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 're enter password';
                    }
                    if (value.trim() != passcontroller.text.trim()) {
                      return 'The re entered password is wrong';
                    }
                    return null;
                  },
                  onTapOutside: (_) {
                    repassfocusNode.unfocus();
                  },
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
                  buttononTap: () {
                    if (emailformkey.currentState!.validate() &&
                        passformkey.currentState!.validate() &&
                        repassformkey.currentState!.validate()) {}
                  },
                ),

                CustomBottomSection(
                  leadingtext: 'Already Have an Account',
                  option: 'Login',
                  buttononTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
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
