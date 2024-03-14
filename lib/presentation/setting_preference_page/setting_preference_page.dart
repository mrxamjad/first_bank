import 'package:amjad_s_application6/widgets/custom_text_form_field.dart';
import 'package:amjad_s_application6/widgets/custom_switch.dart';
import 'package:amjad_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SettingPreferencePage extends StatefulWidget {
  const SettingPreferencePage({Key? key})
      : super(
          key: key,
        );

  @override
  SettingPreferencePageState createState() => SettingPreferencePageState();
}

class SettingPreferencePageState extends State<SettingPreferencePage>
    with AutomaticKeepAliveClientMixin<SettingPreferencePage> {
  TextEditingController classicController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInputField7(context),
                    SizedBox(height: 17.v),
                    _buildInputField8(context),
                    SizedBox(height: 25.v),
                    Text(
                      "Notification",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(right: 49.h),
                      child: Row(
                        children: [
                          CustomSwitch(
                            value: isSelectedSwitch,
                            onChange: (value) {
                              isSelectedSwitch = value;
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 5.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "I send or receive digita currency",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomSwitch(
                          value: isSelectedSwitch1,
                          onChange: (value) {
                            isSelectedSwitch1 = value;
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "I receive merchant order",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.only(right: 38.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomSwitch(
                            margin: EdgeInsets.only(
                              top: 5.v,
                              bottom: 6.v,
                            ),
                            value: isSelectedSwitch2,
                            onChange: (value) {
                              isSelectedSwitch2 = value;
                            },
                          ),
                          Expanded(
                            child: Container(
                              width: 193.h,
                              margin: EdgeInsets.only(left: 12.h),
                              child: Text(
                                "There are recommendation for my account",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.v),
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
    );
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Currency",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: classicController,
          hintText: "USD",
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
          "Time Zone",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: timeController,
          hintText: "(GMT-12:00) International Date Line West",
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
