import 'package:flutter/material.dart';
import 'package:stylish_ui/core/constants/color_constants.dart';
import 'package:stylish_ui/view/home_screen/home_screen.dart';
import 'package:stylish_ui/view/serach_screen/search_screen.dart';
import 'package:stylish_ui/view/settings_screen/setting_screen.dart';
import 'package:stylish_ui/view/wishlist_screen/wishlist_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key, required this.index});

  final int index;
  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  Color fabcolor = ColorConstants.white;
  Color fabiconclr = ColorConstants.black;
  late int selectedindex = widget.index;
  List screenlist = [
    HomeScreen(),
    WishlistScreen(),
    SizedBox(),
    SearchScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          selectedindex = 2;
          setState(() {});
        },
        backgroundColor: selectedindex == 2
            ? ColorConstants.fabtap
            : ColorConstants.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),
        ),
        child: Icon(
          Icons.shopping_cart_outlined,
          color: selectedindex == 2
              ? ColorConstants.white
              : ColorConstants.black,
        ),
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

          BottomNavigationBarItem(icon: SizedBox(), label: ''),
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
