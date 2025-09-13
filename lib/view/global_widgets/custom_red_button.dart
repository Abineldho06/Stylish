import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

class CustomRedButton extends StatelessWidget {
  const CustomRedButton({
    super.key,
    required this.text,
    this.paddingtop = 31,
    this.paddingbottom = 31,
    this.buttononTap,
  });

  final String text;
  final double paddingtop;
  final double paddingbottom;
  final void Function()? buttononTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingtop, bottom: paddingbottom),
      child: InkWell(
        onTap: buttononTap,
        child: Container(
          height: MediaQuery.sizeOf(context).height * .07,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: ColorConstants.primary,
          ),

          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 24,
                color: ColorConstants.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
