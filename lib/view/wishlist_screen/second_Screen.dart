import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstants.scafoldclr,
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          color: ColorConstants.black,
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: ColorConstants.white2,
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 20,
              color: ColorConstants.iconcolor,
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
