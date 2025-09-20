class ProductsModel {
  final String imgUrl;
  final String title;
  final String subtext;
  final String price;
  final String realprice;
  final String offer;
  final double rating;
  final String noofratings;

  ProductsModel({
    required this.imgUrl,
    required this.title,
    required this.subtext,
    required this.price,
    required this.realprice,
    required this.offer,
    this.rating = 0,
    this.noofratings = '',
  });
}
