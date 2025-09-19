import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.catimg,
    required this.category,
  });

  final String catimg;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 28, child: Image.asset(catimg)),
        SizedBox(height: 4),
        Text(
          category,
          style: GoogleFonts.montserrat(
            fontSize: 10,
            color: ColorConstants.black,
          ),
        ),
      ],
    );
  }
}
