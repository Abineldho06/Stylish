import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labeltext,
    required this.prefixicon,
    this.controller,
    this.validator,
    this.suffixIcon,
    this.obscuretext = false,
    this.paddingbottom = 31,
  });

  final String labeltext;
  final IconData prefixicon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool obscuretext;
  final double paddingbottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingbottom),
      child: TextFormField(
        obscureText: obscuretext,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixicon,
            color: ColorConstants.iconcolor,
            size: 24,
          ),
          label: Text(
            labeltext,
            style: TextStyle(color: ColorConstants.textcolor, fontSize: 12),
          ),
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: ColorConstants.textfill,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorConstants.bordercolor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorConstants.bordercolor),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
