import 'package:amjad_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:amjad_s_application6/widgets/custom_text_form_field.dart';
import 'package:amjad_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                                left: 16.h, top: 73.v, right: 16.h),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Welcome to FirstBank",
                                      style: theme.textTheme.headlineMedium)),
                              SizedBox(height: 16.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Login your account",
                                      style: CustomTextStyles
                                          .titleSmallBluegray40001)),
                              SizedBox(height: 24.v),
                              CustomTextFormField(
                                  controller: emailController,
                                  hintText: "Email",
                                  textInputType: TextInputType.emailAddress,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16.h, vertical: 15.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.fillIndigo,
                                  fillColor: appTheme.indigo50),
                              SizedBox(height: 16.v),
                              CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "Password",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 13.v, 16.h, 13.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgAntdesigneyeinvisiblefilled,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 50.v),
                                  obscureText: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 16.h, top: 15.v, bottom: 15.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.fillIndigo,
                                  fillColor: appTheme.indigo50),
                              SizedBox(height: 19.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword(context);
                                      },
                                      child: Text("Forgot Password?",
                                          style: CustomTextStyles
                                              .titleMediumBluegray40001Medium))),
                              SizedBox(height: 40.v),
                              CustomElevatedButton(
                                  text: "Log In",
                                  onPressed: () {
                                    onTapLogIn(context);
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

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
