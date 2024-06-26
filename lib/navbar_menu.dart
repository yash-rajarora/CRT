import 'package:crt/Utils/constants/colors.dart';
import 'package:crt/Utils/helpers/helper_functions.dart';
import 'package:crt/features/personalization/screens/settings/settings.dart';
import 'package:crt/features/shop/screens/home/home.dart';
import 'package:crt/features/shop/screens/store/store.dart';
import 'package:crt/features/shop/screens/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: dark?TColors.black:TColors.white,
          indicatorColor: dark?TColors.white.withOpacity(0.1): TColors.black.withOpacity(0.1),

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final List<Widget> screen = [
    HomeScreen(),
    StoreScreen(),
    FavouriteScreen(),
    SettingsScreen(),
  ];
}
