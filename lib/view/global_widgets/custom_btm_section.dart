import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

class CustomBottomSection extends StatelessWidget {
  const CustomBottomSection({super.key});

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
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffFCF3F6),
                  border: Border.all(color: ColorConstants.primary, width: 2),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    'assets/images/google 1.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffFCF3F6),
                  border: Border.all(color: ColorConstants.primary, width: 2),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    'assets/images/apple 1.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffFCF3F6),
                  border: Border.all(color: ColorConstants.primary, width: 2),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    'assets/images/facebook-app-symbol 1.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 29),
        ],
      ),
    );
  }
}
