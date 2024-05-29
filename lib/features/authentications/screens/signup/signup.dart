import 'package:crt/Utils/constants/text_strings.dart';
import 'package:crt/Utils/helpers/helper_functions.dart';
import 'package:crt/common/widget/login_signup/form_divider.dart';
import 'package:crt/features/authentications/screens/login/widget/TSocialButtons.dart';
import 'package:crt/features/authentications/screens/signup/widget/form.dart';
import 'package:crt/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              TSignupForm(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),
              TLoginDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
