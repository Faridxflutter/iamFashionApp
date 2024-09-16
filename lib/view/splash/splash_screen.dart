import 'package:flutter/material.dart';
import 'package:ima_fashion_app/config/size_config.dart';
import 'package:ima_fashion_app/core/common/assets.dart';
import 'package:lottie/lottie.dart';

import '../../core/routes/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _lottieAnimationController;
  late AnimationController _logoAnimationController;
  late Animation<double> _fadeOutAnimation;
  late Animation<double> _fadeInAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _lottieAnimationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _logoAnimationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _fadeOutAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _lottieAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _logoAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _logoAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    _startAnimation();
  }

  Future<void> _startAnimation() async {
    await Future.delayed(const Duration(seconds: 2));

    _lottieAnimationController.forward();

    await Future.delayed(const Duration(milliseconds: 300));

    _logoAnimationController.forward();
    await Future.delayed(
      const Duration(seconds: 2),
    );
    navigateTohomeScreen();
  }

  navigateOnboardingScreen() {
    Navigator.of(context).pushNamedAndRemoveUntil(
      RouteNames.onBoardingOne,
      (route) => false,
    );
  }

  navigateTohomeScreen() {
    Navigator.of(context).pushNamedAndRemoveUntil(
      RouteNames.allTabScreen,
      (route) => false,
    );
  }

  @override
  void dispose() {
    _lottieAnimationController.dispose();
    _logoAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: FadeTransition(
              opacity: _fadeOutAnimation,
              child: Lottie.asset(
                Assets.splashLottie,
                height: SizeConfig.screenHeight / 3,
              ),
            ),
          ),
          Center(
            child: FadeTransition(
              opacity: _fadeInAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Image.asset(
                  Assets.tpLogo,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
