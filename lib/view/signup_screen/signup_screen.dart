import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 63),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create an \naccount',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 36,
                color: ColorConstants.black,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 33, bottom: 19),
              child: Column(
                spacing: 31,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: ColorConstants.iconcolor,
                        size: 24,
                      ),
                      hintText: 'User name or Email',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: ColorConstants.textcolor,
                      ),
                      filled: true,
                      fillColor: ColorConstants.textfill,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: ColorConstants.bordercolor,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorConstants.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: ColorConstants.iconcolor,
                        size: 24,
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: ColorConstants.textcolor,
                      ),
                      filled: true,
                      fillColor: ColorConstants.textfill,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: ColorConstants.bordercolor,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorConstants.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: ColorConstants.iconcolor,
                        size: 24,
                      ),
                    ),
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: ColorConstants.iconcolor,
                        size: 24,
                      ),
                      hintText: 'Confirm Passsword',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: ColorConstants.textcolor,
                      ),
                      filled: true,
                      fillColor: ColorConstants.textfill,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: ColorConstants.bordercolor,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorConstants.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: ColorConstants.iconcolor,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'By clicking the Register button, you agree \nto the public offer',
              style: TextStyle(fontSize: 12, color: ColorConstants.textcolor),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 38),
              child: Container(
                width: 350,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorConstants.primary,
                ),
                child: Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
