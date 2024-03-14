import 'package:amjad_s_application6/widgets/custom_elevated_button.dart';
import 'package:amjad_s_application6/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 123.v, right: 16.h),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Lets Get Started",
                          style: theme.textTheme.headlineMedium)),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          width: 220.h,
                          child: Text(
                              "Find the right and what you want \nonly in Firstbank",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleSmallBluegray40001
                                  .copyWith(height: 1.50)))),
                  SizedBox(height: 21.v),
                  _buildLoginButton(context),
                  SizedBox(height: 16.v),
                  _buildRegisterButton(context),
                  SizedBox(height: 26.v),
                  Text("Or Use Instant Sign Up",
                      style: CustomTextStyles.labelLargeBluegray400),
                  SizedBox(height: 24.v),
                  _buildSignWithGoogleButton(context),
                  SizedBox(height: 24.v),
                  _buildSignWithAppleButton(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Login",
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Register",
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          onTapRegisterButton(context);
        });
  }

  /// Section Widget
  Widget _buildSignWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "Sign With Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray40001);
  }

  /// Section Widget
  Widget _buildSignWithAppleButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "Sign With Apple",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray40001);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the registersScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registersScreen);
  }
}
