import 'package:amjad_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:amjad_s_application6/widgets/custom_text_form_field.dart';
import 'package:amjad_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                                  Text("Create New Password",
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 15.v),
                                  Text("Create your new password to Login",
                                      style: CustomTextStyles
                                          .titleSmallBluegray40001),
                                  SizedBox(height: 24.v),
                                  CustomTextFormField(
                                      controller: newpasswordController,
                                      hintText: "New Password",
                                      textInputType:
                                          TextInputType.visiblePassword,
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
                                  SizedBox(height: 16.v),
                                  CustomTextFormField(
                                      controller: confirmpasswordController,
                                      hintText: "Confirm Password",
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
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
                                  SizedBox(height: 40.v),
                                  CustomElevatedButton(text: "Reset Password"),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 44.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(30.h, 14.v, 329.h, 14.v)));
  }
}
