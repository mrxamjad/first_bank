import 'package:amjad_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:amjad_s_application6/widgets/custom_search_view.dart';
import 'package:amjad_s_application6/presentation/setting_edit_profile_page/setting_edit_profile_page.dart';
import 'package:amjad_s_application6/presentation/setting_preference_page/setting_preference_page.dart';
import 'package:amjad_s_application6/presentation/setting_security_page/setting_security_page.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

class SettingPreferenceTabContainerScreen extends StatefulWidget {
  const SettingPreferenceTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SettingPreferenceTabContainerScreenState createState() =>
      SettingPreferenceTabContainerScreenState();
}

class SettingPreferenceTabContainerScreenState
    extends State<SettingPreferenceTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 44.v),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 24.v,
                          width: 285.h,
                          child: TabBar(
                            controller: tabviewController,
                            labelPadding: EdgeInsets.zero,
                            labelColor: theme.colorScheme.primary,
                            labelStyle: TextStyle(
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                            unselectedLabelColor: appTheme.blueGray40001,
                            unselectedLabelStyle: TextStyle(
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                            indicatorColor: theme.colorScheme.primary,
                            tabs: [
                              Tab(
                                child: Text(
                                  "Edit Profile",
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Preference",
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Security",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 415.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                SettingEditProfilePage(),
                                SettingPreferencePage(),
                                SettingSecurityPage(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.white,
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 5.v,
                bottom: 6.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "Setting",
            ),
            actions: [
              AppbarTrailingCircleimage(
                imagePath: ImageConstant.imgEllipse37,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomSearchView(
              controller: searchController,
              hintText: "Search for something",
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }
}
