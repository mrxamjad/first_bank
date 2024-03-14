import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 58.v,
                width: 233.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
