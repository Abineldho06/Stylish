import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/core/constants/image_constants.dart';
import 'package:stylish_ui/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:stylish_ui/view/global_widgets/custom_red_button.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstants.getstartimg),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 362,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black12,
                  Colors.black38,
                  Colors.black87,
                  Colors.black,
                ],
              ),
            ),

            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 55),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'You want\nAuthentic, here\nyou go!',
                    style: GoogleFonts.montserrat(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 14),

                  Text(
                    'Find it here, buy it now!',
                    style: GoogleFonts.montserrat(
                      color: ColorConstants.white2,
                      fontSize: 14,
                    ),
                  ),

                  CustomRedButton(
                    text: 'Get Started',
                    paddingbottom: 34,
                    paddingtop: 44,
                    buttononTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavbarScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
