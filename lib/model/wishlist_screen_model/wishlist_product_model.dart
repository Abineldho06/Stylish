import 'package:flutter/material.dart';

class WishlistProductModel {
  final String thumbnail;
  final List images;
  final String title;
  final String subtext;
  final String price;
  final double rating;
  final String noofratings;

  WishlistProductModel({
    required this.thumbnail,
    required this.images,
    required this.title,
    required this.subtext,
    required this.price,
    required this.rating,
    required this.noofratings,
  });
}
