import 'package:amjad_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:amjad_s_application6/widgets/custom_pin_code_text_field.dart';
import 'package:amjad_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 73.v, right: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Enter OTP", style: theme.textTheme.headlineMedium),
                      SizedBox(height: 15.v),
                      Text("Code has been send to *******2@gmail.com",
                          style: CustomTextStyles.titleSmallBluegray40001),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: CustomPinCodeTextField(
                              context: context, onChanged: (value) {})),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(
                          text: "Continue",
                          onPressed: () {
                            onTapContinue(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(30.h, 17.v, 329.h, 17.v)));
  }

  /// Navigates to the newPasswordScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newPasswordScreen);
  }
}
