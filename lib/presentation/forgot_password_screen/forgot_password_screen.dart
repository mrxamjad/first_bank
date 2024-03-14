import 'package:amjad_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:amjad_s_application6/widgets/custom_text_form_field.dart';
import 'package:amjad_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 16.h, top: 76.v, right: 16.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Forgot Password",
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 11.v),
                                  Container(
                                      width: 311.h,
                                      margin: EdgeInsets.only(right: 31.h),
                                      child: Text(
                                          "Please enter your password email address. \nYou will receive a link creative a new password \nvia email.",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleSmallBluegray40001
                                              .copyWith(height: 1.50))),
                                  SizedBox(height: 21.v),
                                  CustomTextFormField(
                                      controller: newpasswordController,
                                      hintText: "Email Id",
                                      textInputAction: TextInputAction.done,
                                      textInputType: TextInputType.emailAddress,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 15.v),
                                      borderDecoration:
                                          TextFormFieldStyleHelper.fillIndigo,
                                      fillColor: appTheme.indigo50),
                                  SizedBox(height: 40.v),
                                  CustomElevatedButton(
                                      text: "Continue",
                                      onPressed: () {
                                        onTapContinue(context);
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
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

  /// Navigates to the otpScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpScreen);
  }
}
