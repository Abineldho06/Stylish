import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

class CustomProductContainer extends StatelessWidget {
  const CustomProductContainer({
    super.key,
    required this.imgurl,
    required this.title,
    required this.subtext,
    required this.price,
    required this.oldprice,
    required this.offerper,
    this.rating = 0,
    this.noofratings = '',
  });

  final String imgurl;
  final String title;
  final String subtext;
  final String price;
  final String oldprice;
  final String offerper;
  final double rating;
  final String noofratings;

  @override
  Widget build(BuildContext context) {
    double ratingcount = rating;

    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.white,
        borderRadius: BorderRadius.circular(6),
      ),
      width: 170,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 124,
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
                    Text(
                      '₹$oldprice',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: ColorConstants.searchbartext,
                      ),
                    ),
                    Text(
                      '$offerper% Off',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: ColorConstants.offertext,
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 4,
                  children: [
                    if (ratingcount > 0)
                      StarRating(
                        rating: ratingcount,
                        color: ColorConstants.ratingicon,
                        size: 14,
                        allowHalfRating: false,
                        onRatingChanged: (rating) {},
                      ),
                    if (noofratings.isNotEmpty)
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
