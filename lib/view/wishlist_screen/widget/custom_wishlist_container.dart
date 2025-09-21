import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

class CustomWishlistContainer extends StatelessWidget {
  const CustomWishlistContainer({
    super.key,
    required this.imgurl,
    required this.title,
    required this.subtext,
    required this.price,
    required this.rating,
    required this.noofratings,
  });

  final String imgurl;
  final String title;
  final String subtext;
  final String price;
  final double rating;
  final String noofratings;

  @override
  Widget build(BuildContext context) {
    double ratingcount = rating;

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorConstants.black.withValues(alpha: .2),
            offset: Offset(0, 2),
            blurRadius: 8,
          ),
        ],
        color: ColorConstants.white,
        borderRadius: BorderRadius.circular(6),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: AssetImage(imgurl),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.black,
                  ),
                ),
                Text(
                  subtext,
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: ColorConstants.black,
                  ),
                ),
                Text(
                  '₹$price',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.black,
                  ),
                ),

                Row(
                  spacing: 4,
                  children: [
                    StarRating(
                      rating: ratingcount,
                      color: ColorConstants.ratingicon,
                      size: 14,
                      allowHalfRating: false,
                      onRatingChanged: (rating) {},
                    ),

                    Text(
                      noofratings,
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        color: ColorConstants.ratingtext,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
