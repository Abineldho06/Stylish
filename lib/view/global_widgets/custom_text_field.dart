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
    this.formkey,
    required this.focusNode,
    this.onChanged,
    this.onTapOutside,
  });

  final String labeltext;
  final IconData prefixicon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool obscuretext;
  final double paddingbottom;
  final Key? formkey;
  final FocusNode focusNode;
  final void Function(PointerDownEvent)? onTapOutside;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingbottom),
      child: Form(
        key: formkey,
        child: TextFormField(
          controller: controller,
          obscureText: obscuretext,
          focusNode: focusNode,

          decoration: InputDecoration(
            label: Text(
              labeltext,
              style: TextStyle(color: ColorConstants.textcolor, fontSize: 12),
            ),
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
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorConstants.primary),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorConstants.black),
            ),
            prefixIcon: Icon(
              prefixicon,
              color: ColorConstants.iconcolor,
              size: 24,
            ),
            suffixIcon: suffixIcon,
          ),
          validator: validator,
          onTapOutside: onTapOutside,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
