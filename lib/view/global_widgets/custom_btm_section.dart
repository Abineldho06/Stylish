import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/core/constants/image_constants.dart';
import 'package:stylish_ui/view/global_widgets/custom_circle_avatar.dart';

class CustomBottomSection extends StatelessWidget {
  const CustomBottomSection({
    super.key,
    required this.leadingtext,
    required this.option,
    this.buttononTap,
  });

  final String leadingtext;
  final String option;
  final void Function()? buttononTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.center,
      child: Column(
        children: [
          Text(
            '- OR Continue with -',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorConstants.iconcolor,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              CustomCircleAvatar(image: ImageConstants.google_svg),
              CustomCircleAvatar(image: ImageConstants.apple_avg),
              CustomCircleAvatar(image: ImageConstants.facebook_svg),
            ],
          ),
          SizedBox(height: 29),

          Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                leadingtext,
                style: TextStyle(fontSize: 14, color: ColorConstants.grey),
              ),
              InkWell(
                onTap: buttononTap,
                child: Text(
                  option,
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
    );
  }
}
