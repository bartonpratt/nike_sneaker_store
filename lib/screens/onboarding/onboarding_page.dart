import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_sneaker_store/screens/auth/login.dart';
import 'package:nike_sneaker_store/screens/onboarding/first.dart';
import 'package:nike_sneaker_store/screens/onboarding/second.dart';
import 'package:nike_sneaker_store/screens/onboarding/third.dart';
import 'package:nike_sneaker_store/widgets/themes/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();
  int currentPage = 0;

  void _nextPage() {
    if (currentPage < 2) {
      controller.animateToPage(currentPage + 1,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            controller: controller,
            children: <Widget>[
              First(onNext: _nextPage),
              Second(onNext: _nextPage),
              Third(onNext: () {
                Get.to(() => const LoginPage());
              })
            ],
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller, // PageController
                count: 3,
                axisDirection: Axis.horizontal,
                effect: const ExpandingDotsEffect(
                    dotColor: AppColors.white,
                    activeDotColor: AppColors.accentOrange),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
