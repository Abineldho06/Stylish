import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/core/constants/image_constants.dart';
import 'package:stylish_ui/model/home_screen_model/category_model.dart';
import 'package:stylish_ui/view/global_widgets/filter_section.dart';
import 'package:stylish_ui/view/home_screen/widgets/category_widget.dart';
import 'package:stylish_ui/view/home_screen/widgets/dealoftheday.dart';

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
        backgroundColor: Colors.transparent,
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
            _methodDealofTheDay(),
          ],
        ),
      ),
    );
  }

  Dealoftheday _methodDealofTheDay() {
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
            (index) => Container(
              width: 343,
              height: 189,
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
    List<CategoryModel> categorylist = [
      CategoryModel(catimg: 'assets/images/catimg_1.png', category: 'Beauty'),
      CategoryModel(catimg: 'assets/images/catimg_2.png', category: 'Fashion'),
      CategoryModel(catimg: 'assets/images/catimg_3.png', category: 'Kids'),
      CategoryModel(catimg: 'assets/images/catimg_4.png', category: 'Mens'),
      CategoryModel(catimg: 'assets/images/catimg_5.png', category: 'Womens'),
      CategoryModel(catimg: 'assets/images/catimg_6.png', category: 'Gifts'),
    ];

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
}
