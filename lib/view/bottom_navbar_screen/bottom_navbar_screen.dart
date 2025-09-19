import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/view/home_screen/home_screen.dart';
import 'package:stylish_ui/view/serach_screen/search_screen.dart';
import 'package:stylish_ui/view/settings_screen/setting_screen.dart';
import 'package:stylish_ui/view/wishlist_screen/wishlist_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  Color fabcolor = ColorConstants.white;
  Color fabiconclr = ColorConstants.black;
  int selectedindex = 0;
  List screenlist = [
    HomeScreen(),
    WishlistScreen(),
    SearchScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fabcolor = ColorConstants.fabtap;
          fabiconclr = ColorConstants.white;
          setState(() {});
        },
        backgroundColor: fabcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),
        ),
        child: Icon(Icons.shopping_cart_outlined, color: fabiconclr),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: screenlist[selectedindex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstants.white,
        selectedItemColor: ColorConstants.primary,
        currentIndex: selectedindex,
        unselectedItemColor: ColorConstants.black,
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Wishlist',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
