import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/view/global_widgets/custom_red_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/unsplash_fouVDmGXoPI.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: .5),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 55, right: 55),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'You want \nAuthentic, here \nyou go!',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Text(
                        'Find it here, buy it now!',
                        style: TextStyle(
                          color: ColorConstants.white,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    CustomRedButton(
                      text: 'Get Started',
                      paddingbottom: 34,
                      paddingtop: 44,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
