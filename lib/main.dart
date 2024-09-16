import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/constant/constants.dart';
import '../core/routes/app_router.dart';
import '../view/home/all_tab_screen.dart';
import '../view/splash/splash_screen.dart';

import 'config/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      // onGenerateRoute: AppRouter.onGenerateRoute,
      // initialRoute: AllTabScreen.routeName,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      title: 'ImaFashion',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        cardColor: kWhiteColor,
        scaffoldBackgroundColor: kWhiteColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 45,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
            fontFamily: GoogleFonts.raleway().fontFamily,
          ),
          foregroundColor: kPrimaryColor,
          backgroundColor: kWhiteColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelBehavior: FloatingLabelBehavior.never,

          fillColor: kBackgroundColor,
          // filled: true,
          // Customize the text field border

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            // width: 0.0 produces a thin "hairline" border
            borderSide: const BorderSide(
              color: kBackgroundColor,
              width: 0.0,
            ),
          ),

          focusedBorder: OutlineInputBorder(
            // width: 0.0 produces a thin "hairline" border
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: kBackgroundColor, width: 0.0),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: kBackgroundColor,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          // Customize the text field label style
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
          ),
          // Customize the text field hint style
          hintStyle: TextStyle(
            color: const Color(0xFF515151),
            fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
          ),
          // Customize the text field content padding
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        textTheme: GoogleFonts.ralewayTextTheme().apply(
          bodyColor: kPrimaryColor,
        ),
        colorScheme: const ColorScheme.light(
          primary: kPrimaryColor,
          secondary: kSecondaryColor,
          error: kRedColor,
          background: kBackgroundColor,
        ),
        useMaterial3: false,
      ),
      routes: {
        RouteNames.allTabScreen: (context) => const AllTabScreen(),
      },
    );
  }
}
