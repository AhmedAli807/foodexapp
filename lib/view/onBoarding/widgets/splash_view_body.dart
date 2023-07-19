import 'package:flutter/material.dart';
import '../../../config/onboarding_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       Image.asset(OnBoardingImages.firstOnBoarding)


      ],
    );
  }
}
