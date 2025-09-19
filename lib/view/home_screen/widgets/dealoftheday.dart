import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

class Dealoftheday extends StatelessWidget {
  const Dealoftheday({
    super.key,
    required this.maintext,
    required this.subtext,
    required this.icondata,
    required this.bgcolor,
  });

  final String maintext;
  final String subtext;
  final IconData icondata;
  final Color bgcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 65,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              top: 8,
              bottom: 8,
              right: 16,
            ),
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maintext,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.white,
                  ),
                ),
                Row(
                  spacing: 4,
                  children: [
                    Icon(icondata, color: ColorConstants.white, size: 16),
                    Text(
                      subtext,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: ColorConstants.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: ColorConstants.white),
                borderRadius: BorderRadius.circular(4),
              ),
              width: 89,
              height: 28,
              child: Row(
                spacing: 4,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'View All',
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 16,
                    color: ColorConstants.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
