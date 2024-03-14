import 'package:amjad_s_application6/widgets/custom_switch.dart';
import 'package:amjad_s_application6/widgets/custom_text_form_field.dart';
import 'package:amjad_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SettingSecurityPage extends StatefulWidget {
  const SettingSecurityPage({Key? key})
      : super(
          key: key,
        );

  @override
  SettingSecurityPageState createState() => SettingSecurityPageState();
}

class SettingSecurityPageState extends State<SettingSecurityPage>
    with AutomaticKeepAliveClientMixin<SettingSecurityPage> {
  bool isSelectedSwitch = false;

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(
                  children: [
                    SizedBox(height: 23.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Two-factor Authentication",
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 10.v),
                          Padding(
                            padding: EdgeInsets.only(right: 72.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomSwitch(
                                  margin: EdgeInsets.only(
                                    top: 5.v,
                                    bottom: 6.v,
                                  ),
                                  value: isSelectedSwitch,
                                  onChange: (value) {
                                    isSelectedSwitch = value;
                                  },
                                ),
                                Expanded(
                                  child: Container(
                                    width: 159.h,
                                    margin: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                      "Enable or disable two factor authentication",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          theme.textTheme.bodySmall!.copyWith(
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 17.v),
                          Text(
                            "Change Password",
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 11.v),
                          _buildInputField7(context),
                          SizedBox(height: 18.v),
                          _buildInputField8(context),
                          SizedBox(height: 20.v),
                          CustomElevatedButton(
                            height: 40.v,
                            text: "Save",
                            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
          "Current Password",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "Charlene@123",
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
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
          "New Password",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: newpasswordController,
          hintText: "Charlene@123",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        ),
      ],
    );
  }
}
