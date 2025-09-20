import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/core/constants/image_constants.dart';
import 'package:stylish_ui/view/global_widgets/filter_section.dart';
import 'package:stylish_ui/view/home_screen/widgets/category_widget.dart';
import 'package:stylish_ui/view/home_screen/widgets/dealoftheday.dart';
import 'package:stylish_ui/view/home_screen/widgets/demo_data/banner_demo.dart';
import 'package:stylish_ui/view/home_screen/widgets/demo_data/category_demo_data.dart';
import 'package:stylish_ui/view/home_screen/widgets/demo_data/dealofdayproduct_demo_data.dart';
import 'package:stylish_ui/view/home_screen/widgets/demo_data/trendinding_product_demo_data.dart';
import 'package:stylish_ui/view/home_screen/widgets/product_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.scafoldclr,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //1.Search Section.
            _customSerachBar(),
            SizedBox(height: 16),
            //2.Category Featured section
            _categoryAndFilterSection(),
            SizedBox(height: 16),
            //3.Carousel Slider
            _methodCarouselSlider(),
            SizedBox(height: 16),
            //4.DealoftheDay
            _methodDealofTheDayContainer(),
            SizedBox(height: 16),
            //5.Deal of the Day Products.
            _methodDealoftheDayProducts(),
            SizedBox(height: 16),
            //6.special offers.
            _methodSpecialoffer(),
            SizedBox(height: 16),
            //7.Bannersection
            _methodBanner(),
            SizedBox(height: 16),
            //8.Trending Product
            _methodTrendingProductsContainer(),
            SizedBox(height: 16),
            //9.Trending Products
            _methodTrendingProducts(),
            SizedBox(height: 16),
            //10.NewArivals
            _methodNewArivals(),
            SizedBox(height: 16),
            _methodsponserd(),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  Widget _methodSpecialoffer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Row(
            spacing: 14,
            children: [
              Image.asset(
                'assets/images/special_offere.png',
                width: 80,
                height: 70,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Text(
                        'Special Offers',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.black,
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: ColorConstants.white,
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(color: ColorConstants.bordercolor),
                        ),
                        child: Icon(
                          Icons.bolt_outlined,
                          size: 18,
                          color: ColorConstants.ratingicon,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'We make sure you get the\noffer you need at best prices',
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: ColorConstants.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _methodDealoftheDayProducts() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          spacing: 12,
          children: List.generate(
            productslist.length,
            (index) => CustomProductContainer(
              imgurl: productslist[index].imgUrl,
              title: productslist[index].title,
              subtext: productslist[index].subtext,
              price: productslist[index].price,
              oldprice: productslist[index].realprice,
              offerper: productslist[index].offer,
              rating: productslist[index].rating,
              noofratings: productslist[index].noofratings,
            ),
          ),
        ),
      ),
    );
  }

  Dealoftheday _methodDealofTheDayContainer() {
    return Dealoftheday(
      maintext: 'Deal of the Day',
      subtext: '22h 55m 20s remaining',
      icondata: Icons.alarm,
      bgcolor: ColorConstants.textblue,
    );
  }

  Widget _methodCarouselSlider() {
    List imageUrl = [
      'assets/images/caraouselimg1.jpg',
      'assets/images/carouselimg2.jpg',
      'assets/images/carouselimg3.jpg',
    ];
    return Column(
      spacing: 12,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 189,
            // aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              currentpage = index;
              setState(() {});
            },
            scrollDirection: Axis.horizontal,
          ),
          items: List.generate(
            imageUrl.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(imageUrl[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentpage,
          count: imageUrl.length,
          effect: JumpingDotEffect(
            radius: 9,
            dotWidth: 9,
            dotHeight: 9,
            dotColor: ColorConstants.indicator2,
            activeDotColor: ColorConstants.indicator,
          ),
        ),
      ],
    );
  }

  Widget _customSerachBar() {
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

  Widget _categoryAndFilterSection() {
    return Column(
      spacing: 16,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'All Featured',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              FilterSection(text: 'Sort', icondata: Icons.swap_vert),
              SizedBox(width: 12),
              FilterSection(
                text: 'Filter',
                icondata: Icons.filter_alt_outlined,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            decoration: BoxDecoration(
              color: ColorConstants.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  spacing: 16,
                  children: List.generate(
                    categorylist.length,
                    (index) => CategoryWidget(
                      catimg: categorylist[index].catimg,
                      category: categorylist[index].category,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _methodTrendingProductsContainer() {
    return Dealoftheday(
      maintext: 'Trending Products ',
      subtext: 'Last Date 29/02/22',
      icondata: Icons.calendar_month_outlined,
      bgcolor: ColorConstants.trending,
    );
  }

  Widget _methodBanner() {
    return SizedBox(
      height: 172,
      child: PageView.builder(
        itemCount: bannerimages.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: 343,
            height: 172,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(bannerimages[index]),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _methodTrendingProducts() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          spacing: 12,
          children: List.generate(
            trendingproductlist.length,
            (index) => CustomProductContainer(
              imgurl: trendingproductlist[index].imgUrl,
              title: trendingproductlist[index].title,
              subtext: trendingproductlist[index].subtext,
              price: trendingproductlist[index].price,
              oldprice: trendingproductlist[index].realprice,
              offerper: trendingproductlist[index].offer,
              rating: trendingproductlist[index].rating,
              noofratings: trendingproductlist[index].noofratings,
            ),
          ),
        ),
      ),
    );
  }

  Widget _methodNewArivals() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: ColorConstants.white,
        ),
        child: Column(
          children: [
            Container(
              width: 360,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/newArivals.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 12, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Arrivals',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Summer’ 25 Collections",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: ColorConstants.black,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorConstants.primary,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          child: Row(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _methodsponserd() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 11,
            children: [
              Text(
                'Sponserd',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.black,
                ),
              ),
              Container(
                width: 330,
                height: 257,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/sponserd.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'up to 50% Off',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.black,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 17,
                    color: ColorConstants.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
