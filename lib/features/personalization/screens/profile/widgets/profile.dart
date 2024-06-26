import 'package:crt/Utils/constants/image_strings.dart';
import 'package:crt/Utils/constants/sizes.dart';
import 'package:crt/common/widget/appbar/appbar.dart';
import 'package:crt/common/widget/images/t_circular_image.dart';
import 'package:crt/common/widget/texts/section_heading.dart';
import 'package:crt/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.user,
                      isNetworkImage: false,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwItems/2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(title: 'Profile Information',showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),


              TProfileMenu(title: 'Name',value: 'Yash Raj Arora',onPressed: (){}),
              TProfileMenu(title: 'Username',value: 'Yash',onPressed: (){}),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              const TSectionHeading(title: 'Personal Information',showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(onPressed: (){}, title: 'User ID', value: '45455'),
              TProfileMenu(onPressed: (){}, title: 'E-mail', value: 'yashrajofficial@gmail.com'),
              TProfileMenu(onPressed: (){}, title: 'Phone Number', value: '9635577966'),
              TProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
              TProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '11 Oct, 2002'),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Delete Account',style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


