import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:todoapplication/model/onboarding_info.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('lib/assets/Home.jpg', 'Order Your Food', 'description'),
    OnboardingInfo('lib/assets/Home1.jpg', 'Order Your Food', 'description'),
    OnboardingInfo('lib/assets/Home2.jpg', 'Order Your Food', 'description'),
  ];
}
