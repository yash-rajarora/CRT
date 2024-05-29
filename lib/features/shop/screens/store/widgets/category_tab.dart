import 'package:crt/Utils/constants/image_strings.dart';
import 'package:crt/Utils/constants/sizes.dart';
import 'package:crt/common/widget/brands/brand_show_case.dart';
import 'package:crt/common/widget/layouts/grid_layout.dart';
import 'package:crt/common/widget/product/product_cards/product_card_vertical.dart';
import 'package:crt/common/widget/texts/section_heading.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TBrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ],
              ),
              const TBrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
