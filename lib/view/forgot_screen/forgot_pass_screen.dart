import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

import 'package:stylish_ui/view/global_widgets/custom_red_button.dart';
import 'package:stylish_ui/view/global_widgets/custom_text_field.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  TextEditingController emailcontroller = TextEditingController();

  FocusNode emailfocusNode = FocusNode();

  final emailformkey = GlobalKey<FormState>();

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
                  'Forgot \nPassword?',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.black,
                  ),
                ),

                SizedBox(height: 36),

                CustomTextField(
                  controller: emailcontroller,
                  focusNode: emailfocusNode,
                  labeltext: 'Enter your email address',
                  prefixicon: Icons.mail,
                  paddingbottom: 26,
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

                Text(
                  '* We will send you a message to set or reset your new password',
                  style: TextStyle(
                    fontSize: 12,
                    color: ColorConstants.textcolor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                CustomRedButton(
                  text: 'Submit',
                  paddingtop: 26,
                  paddingbottom: 75,
                  buttononTap: () {
                    if (emailformkey.currentState!.validate()) {}
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
