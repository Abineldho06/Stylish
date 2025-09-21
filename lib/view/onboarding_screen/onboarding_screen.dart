import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/core/constants/image_constants.dart';
import 'package:stylish_ui/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:stylish_ui/view/home_screen/home_screen.dart';
import 'package:stylish_ui/view/singn_in_screen/sign_in_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List screendata = [
    {
      "image": ImageConstants.onboardimg1,
      "width": 300.0,
      "height": 300.0,
      "title": "Choose Products",
      "discription":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
    {
      "image": ImageConstants.onboardimg2,
      "width": 350.0,
      "height": 234.0,
      "title": "Make Payment",
      "discription":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
    {
      "image": ImageConstants.onboardimg3,
      "width": 350.0,
      "height": 350.0,
      "title": "Get Your Order",
      "discription":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
  ];

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              text: '${currentindex + 1}',
              children: [
                TextSpan(
                  text: '/${screendata.length}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignInScreen()),
              );
            },
            child: Text(
              "skip",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),

      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "${screendata[currentindex]["image"]}",
                width: screendata[currentindex]["width"],
                height: screendata[currentindex]["height"],
              ),
              Text(
                "${screendata[currentindex]["title"]}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 17, right: 18),
                child: Text(
                  "${screendata[currentindex]["discription"]}",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (currentindex > 0)
              _methodPreviewButton()
            else
              const SizedBox(width: 70),

            _methodAnimatedSmoothIndicator(),

            _methodNextButton(context),
          ],
        ),
      ),
    );
  }

  TextButton _methodPreviewButton() {
    return TextButton(
      onPressed: () {
        if (currentindex > 0) {
          currentindex--;
          setState(() {});
        }
      },
      child: Text(
        'Prev',
        style: TextStyle(color: ColorConstants.grey, fontSize: 18),
      ),
    );
  }

  TextButton _methodNextButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (currentindex < screendata.length - 1) {
          setState(() {
            currentindex++;
          });
        } else if (currentindex == screendata.length - 1) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomNavbarScreen()),
          );
        }
      },
      child: Text(
        currentindex == screendata.length - 1 ? "Get Started" : "Next",
        style: TextStyle(color: ColorConstants.primary, fontSize: 18),
      ),
    );
  }

  AnimatedSmoothIndicator _methodAnimatedSmoothIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: currentindex,
      count: screendata.length,
      effect: ExpandingDotsEffect(
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: ColorConstants.onboardind,
        dotColor: ColorConstants.onboardind2,
        expansionFactor: 4,
      ),
    );
  }
}
