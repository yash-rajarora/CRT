import 'package:crt/Utils/constants/colors.dart';
import 'package:crt/Utils/constants/sizes.dart';
import 'package:crt/Utils/device/device_utility.dart';
import 'package:crt/Utils/helpers/helper_functions.dart';
import 'package:crt/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingDot extends StatelessWidget {
  const onBoardingDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? TColors.light : TColors.dark,
                dotHeight: 6)));
  }
}