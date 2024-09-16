import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ima_fashion_app/core/constant/constants.dart';
import 'package:ima_fashion_app/view/home/home_screen.dart';
import 'package:ima_fashion_app/view/profile/profile_screen.dart';
import 'package:ima_fashion_app/view/wishlist/wishlist_screen.dart';

import '../cart/cart_screen.dart';

class AllTabScreen extends StatefulWidget {
  // static const String routeName = '/';
  // static Route route() {
  //   return MaterialPageRoute(
  //     settings: const RouteSettings(
  //       name: routeName,
  //     ),
  //     builder: (_) => const AllTabScreen(),
  //   );
  // }

  const AllTabScreen({
    super.key,
  });

  @override
  State<AllTabScreen> createState() => _AllTabScreenState();
}

class _AllTabScreenState extends State<AllTabScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildBody(), bottomNavigationBar: _buildBottomNavigationBar());
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const WishlistScreen();
      case 2:
        return const CartScreen();
      case 3:
        return const ProfileScreen();
      default:
        return const Center(child: Text('ImaFashion'));
    }
  }

  Widget _buildBottomNavigationBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: GNav(
            haptic: true,
            gap: 3,
            activeColor: kPrimaryColor,
            // style: GnavStyle.values,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: kPrimaryColor,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
                textColor: kWhiteColor,
                iconActiveColor: kWhiteColor,
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Wishlist',
                textColor: kWhiteColor,
                iconActiveColor: kWhiteColor,
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: 'Cart',
                textColor: kWhiteColor,
                iconActiveColor: kWhiteColor,
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                textColor: kWhiteColor,
                iconActiveColor: kWhiteColor,
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            }),
      ),
    );
  }
}
