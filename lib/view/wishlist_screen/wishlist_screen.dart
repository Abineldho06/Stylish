import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/core/constants/image_constants.dart';
import 'package:stylish_ui/view/global_widgets/filter_section.dart';
import 'package:stylish_ui/view/wishlist_screen/demo_data/wishlist_product_demo_data.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.scafoldclr,
        leading: Center(
          child: CircleAvatar(
            radius: 16,
            backgroundColor: ColorConstants.white2,
            child: Icon(Icons.menu, size: 18, color: ColorConstants.iconcolor),
          ),
        ),
        title: Row(
          spacing: 9,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstants.logo, width: 38.78, height: 31.03),
            Text(
              'Stylish',
              style: GoogleFonts.libreCaslonText(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ColorConstants.textblue,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            child: Image.asset(ImageConstants.profileimg),
          ),
          SizedBox(width: 12),
        ],
      ),
      backgroundColor: ColorConstants.scafoldclr,
      body: Column(
        children: [
          //1.Searchbar
          _methodSerachBar(),
          SizedBox(height: 16),
          //2.Items
          _methodItemsandFilter(),
          //3.WishlistProducts
          Expanded(child: _methodWishlistProducts(context)),
        ],
      ),
    );
  }

  Widget _methodWishlistProducts(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: MasonryGridView.builder(
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: wishlistproductlist.length,
        itemBuilder: (context, index) {
          int column = index % 2;
          double imgheight = (column == 0)
              ? (index.isOdd ? 136 : 196)
              : (index.isEven ? 196 : 136);

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
                  height: imgheight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage(wishlistproductlist[index].imgUrl),
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
                        wishlistproductlist[index].title,
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.black,
                        ),
                      ),
                      Text(
                        wishlistproductlist[index].subtext,
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: ColorConstants.black,
                        ),
                      ),
                      Text(
                        '₹${wishlistproductlist[index].price}',
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
                            rating: wishlistproductlist[index].rating,
                            color: ColorConstants.ratingicon,
                            size: 14,
                            allowHalfRating: false,
                            onRatingChanged: (rating) {},
                          ),

                          Text(
                            wishlistproductlist[index].noofratings,
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
        },
      ),
    );
  }

  Padding _methodItemsandFilter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '52,082+ Items',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: ColorConstants.black,
            ),
          ),
          Row(
            spacing: 12,
            children: [
              FilterSection(text: 'Style', icondata: Icons.swap_vert),
              FilterSection(
                text: 'Filter',
                icondata: Icons.filter_alt_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _methodSerachBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          hint: Text(
            'Search any Product..',
            style: GoogleFonts.montserrat(
              fontSize: 14,
              color: ColorConstants.searchbartext,
            ),
          ),
          prefixIcon: Icon(
            Icons.search_rounded,
            size: 20,
            color: ColorConstants.searchbartext,
          ),
          suffixIcon: Icon(
            Icons.mic,
            size: 24,
            color: ColorConstants.searchbartext,
          ),
        ),
      ),
    );
  }
}
