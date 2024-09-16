// import 'package:flutter/material.dart';
// import 'package:ima_fashion_app/view/cart/cart_screen.dart';
// import 'package:ima_fashion_app/view/home/all_tab_screen.dart';

// class AppRouter {
//   static Route onGenerateRoute(RouteSettings settings) {
//     print("this is route: ${settings.name}");
//     switch (settings.name) {
//       case '/':
//         return AllTabScreen.route();
//       case AllTabScreen.routeName:
//         return AllTabScreen.route();
//       case CartScreen.routeName:
//         return CartScreen.route();
//       default:
//         return _errorRoute();
//     }
//   }

//   static Route _errorRoute() {
//     return MaterialPageRoute(
//       settings: const RouteSettings(
//         name: "/error",
//       ),
//       builder: (_) => const Scaffold(
//         body: Center(
//           child: Text("Error Route"),
//         ),
//       ),
//     );
//   }
// }

class RouteNames {
  static const allTabScreen = 'allTabScreen';

  static const onBoardingOne = 'ob1';
  static const onBoardingTwo = 'ob2';
}
