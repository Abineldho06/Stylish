import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key, required this.text, required this.icondata});

  final String text;
  final IconData icondata;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorConstants.white,
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Row(
                children: [
                  Text(text, style: GoogleFonts.montserrat(fontSize: 12)),
                  Icon(icondata, size: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
