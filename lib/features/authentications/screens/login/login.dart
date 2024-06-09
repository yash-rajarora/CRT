import 'package:crt/Utils/helpers/helper_functions.dart';
import 'package:crt/common/styles/spacing_style.dart';
import 'package:crt/features/authentications/screens/login/widget/TLoginForm.dart';
import 'package:crt/features/authentications/screens/login/widget/TLoginHeader.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo and Heading
              TLoginHeader(dark: dark),

              ///form

              const TLoginForm(),

              ///Divider

              // TLoginDivider(dividerText:TTexts.orSignInWith.capitalize!),
              // const SizedBox(height: TSizes.spaceBtwSections),
              //
              // ///Socialss
              //
              // const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
