import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  static const String routeName = '/wishlist';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: routeName,
      ),
      builder: (_) => const WishlistScreen(),
    );
  }

  const WishlistScreen({
    super.key,
  });

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist"),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 200,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
