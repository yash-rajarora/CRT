import 'package:crt/Utils/constants/image_strings.dart';
import 'package:crt/Utils/constants/sizes.dart';
import 'package:crt/Utils/constants/text_strings.dart';
import 'package:crt/common/widget/appbar/appbar.dart';
import 'package:crt/common/widget/custom_shapes/Container/primary_header_container.dart';
import 'package:crt/common/widget/custom_shapes/Container/search_container.dart';
import 'package:crt/common/widget/layouts/grid_layout.dart';
import 'package:crt/common/widget/list_tiles/settings_menu_tile.dart';
import 'package:crt/common/widget/list_tiles/user_profile_tile.dart';
import 'package:crt/common/widget/product/product_cards/product_card_vertical.dart';
import 'package:crt/common/widget/texts/section_heading.dart';
import 'package:crt/features/shop/screens/Students_marks/Gd.dart';
import 'package:crt/features/shop/screens/Students_marks/Hr.dart';
import 'package:crt/features/shop/screens/Students_marks/Tech.dart';
import 'package:crt/features/shop/screens/home/widget/home_appbar.dart';
import 'package:crt/features/shop/screens/home/widget/home_categories.dart';
import 'package:crt/features/shop/screens/home/widget/promo_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:crt/features/shop/screens/Students_marks/Dat.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Color of the border
                width: 2.0, // Thickness of the border
              ),
            ),
            child: AppBar(
              title: Text("Student Dashboard", style: TextStyle(fontSize: 22),),
              automaticallyImplyLeading: false, // Background color of the AppBar
              elevation: 0, // Remove the shadow under the AppBar
                actions: <Widget>[
                      IconButton(
                        icon: Icon(Icons.exit_to_app),
                        onPressed: (){},
                      ),
                ],
            ),
          ),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
             Container(
                  height: 220,
                  width: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                ),
              SizedBox(height: 25,),
              Row(
                  children: [
                    Text("Attendence : "),
                    Text("Present", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
                  ]
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to another page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DatPage()),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 800,
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "DAT",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  GestureDetector(
                    onTap: () {
                      // Navigate to another page
                      // Navigator.push(
                        // context,
                        // MaterialPageRoute(builder: (context) => CbtPage()),
                      // );
                    },
                    child: Container(
                      height: 60,
                      width: 800,
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "CBT",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  GestureDetector(
                    onTap: () {
                      // Navigate to another page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TechPage()),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 800,
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "PI Tech",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  GestureDetector(
                    onTap: () {
                      // Navigate to another page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HrPage()),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 800,
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "PI HR",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  GestureDetector(
                    onTap: () {
                      // Navigate to another page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GdPage()),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 800,
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "GD & Extempore",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),

                ],
              )
          ]
          ),
        ),
      )
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const TPrimaryHeaderContainer(
//               child: Column(
//                 children: [
//                   THomeAppBar(),
//                   SizedBox(
//                     height: TSizes.spaceBtwSections,
//                   ),
//                   TSearchContainer(
//                     text: 'Search in Store',
//                   ),
//                   SizedBox(
//                     height: TSizes.spaceBtwSections,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: TSizes.defaultSpace),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TSectionHeading(
//                           title: 'Popular Catgories',
//                           showActionButton: false,
//                         ),
//                         SizedBox(
//                           height: TSizes.spaceBtwItems,
//                         ),
//                         THomeCategories()
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: TSizes.spaceBtwSections),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(TSizes.defaultSpace),
//               child: Column(
//                 children: [
//                   TPromoSlider(
//                     banner: [
//                       TImages.promoBanner1,
//                       TImages.promoBanner2,
//                       TImages.promoBanner3,
//                     ],
//                   ),
//                   SizedBox(height: TSizes.spaceBtwSections),
//                   TSectionHeading(title: TTexts.popularProducts,onPressed: (){}),
//                   SizedBox(height:TSizes.spaceBtwItems),
//                   TGridLayout(itemCount: 4,itemBuilder: (_,index) => TProductCardVertical()),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




