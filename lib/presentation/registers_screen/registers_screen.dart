import 'package:amjad_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:amjad_s_application6/widgets/custom_text_form_field.dart';
import 'package:amjad_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RegistersScreen extends StatelessWidget {
  RegistersScreen({Key? key}) : super(key: key);

  TextEditingController firstNameRowController = TextEditingController();

  TextEditingController lastNameRowController = TextEditingController();

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
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Create a New Account",
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 15.v),
                                  Text("It’s fast and easy",
                                      style: CustomTextStyles
                                          .titleSmallBluegray40001),
                                  SizedBox(height: 24.v),
                                  _buildFirstName(context),
                                  SizedBox(height: 16.v),
                                  _buildEmail(context),
                                  SizedBox(height: 16.v),
                                  _buildPassword(context),
                                  SizedBox(height: 40.v),
                                  _buildRegisterButton(context),
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

  /// Section Widget
  Widget _buildFirstNameRow(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: CustomTextFormField(
                controller: firstNameRowController,
                hintText: "First Name",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                fillColor: appTheme.indigo50)));
  }

  /// Section Widget
  Widget _buildLastNameRow(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomTextFormField(
                controller: lastNameRowController,
                hintText: "Last Name",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                fillColor: appTheme.indigo50)));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildFirstNameRow(context), _buildLastNameRow(context)]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillIndigo,
        fillColor: appTheme.indigo50);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgAntdesigneyeinvisiblefilled,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillIndigo,
        fillColor: appTheme.indigo50);
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Register ",
        onPressed: () {
          onTapRegisterButton(context);
        });
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getStartedScreen);
  }
}
