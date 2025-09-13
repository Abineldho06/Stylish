import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFCF3F6),
        border: Border.all(color: ColorConstants.primary, width: 2),
        shape: BoxShape.circle,
      ),
      width: 54,
      height: 54,
      child: Center(child: SvgPicture.asset(image, width: 24, height: 24)),
    );
  }
}
