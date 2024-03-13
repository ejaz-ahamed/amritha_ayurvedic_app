import 'package:amritha_ayurveda/core/constants/app_assets_constants.dart';
import 'package:flutter/material.dart';

class SplashSrceen extends StatelessWidget {
  const SplashSrceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppAssetsConstants().imgSplash,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
