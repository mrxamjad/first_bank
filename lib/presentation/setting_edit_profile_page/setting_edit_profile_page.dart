import 'package:amjad_s_application6/widgets/custom_icon_button.dart';
import 'package:amjad_s_application6/widgets/custom_text_form_field.dart';
import 'package:amjad_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SettingEditProfilePage extends StatefulWidget {
  const SettingEditProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  SettingEditProfilePageState createState() => SettingEditProfilePageState();
}

class SettingEditProfilePageState extends State<SettingEditProfilePage>
    with AutomaticKeepAliveClientMixin<SettingEditProfilePage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 170.v,
                        width: 174.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse28,
                              height: 170.adaptSize,
                              width: 170.adaptSize,
                              radius: BorderRadius.circular(
                                85.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20.v),
                              child: CustomIconButton(
                                height: 38.adaptSize,
                                width: 38.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                alignment: Alignment.bottomRight,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgPencilAlt1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 23.v),
                      _buildInputField7(context),
                      SizedBox(height: 18.v),
                      _buildInputField9(context),
                      SizedBox(height: 17.v),
                      _buildInputField6(context),
                      SizedBox(height: 18.v),
                      _buildInputField10(context),
                      SizedBox(height: 17.v),
                      _buildInputField2(
                        context,
                        cardType: "Date of Birth",
                        zipcode: "25 January 1990",
                      ),
                      SizedBox(height: 17.v),
                      _buildInputField11(context),
                      SizedBox(height: 18.v),
                      _buildInputField4(context),
                      SizedBox(height: 19.v),
                      _buildInputField8(context),
                      SizedBox(height: 17.v),
                      _buildInputField2(
                        context,
                        cardType: "Postal Code",
                        zipcode: "45962",
                      ),
                      SizedBox(height: 19.v),
                      _buildInputField12(context),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                        height: 40.v,
                        text: "Save",
                        buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Name",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: nameController,
          hintText: "Charlene Reed ",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField9(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "User Name",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: userNameController,
          hintText: "Charlene Reed ",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField6(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "user@gmail.com ",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField10(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "**********",
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField11(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Present Address",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: addressController,
          hintText: "San Jose, California, USA",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Permanent Address",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: addressController1,
          hintText: "San Jose, California, USA",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField8(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "City",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: cityController,
          hintText: "San Jose",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField12(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Country",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: countryController,
          hintText: "USA",
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildInputField2(
    BuildContext context, {
    required String cardType,
    required String zipcode,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          cardType,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray40001,
          ),
        ),
        SizedBox(height: 8.v),
        Container(
          width: 287.h,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.outlineTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Text(
            zipcode,
            style: CustomTextStyles.bodySmallBluegray900.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
      ],
    );
  }
}
