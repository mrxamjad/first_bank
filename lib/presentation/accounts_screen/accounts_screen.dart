import 'package:amjad_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:amjad_s_application6/widgets/custom_search_view.dart';
import 'widgets/accountsgrid_item_widget.dart';
import 'package:amjad_s_application6/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AccountsScreen extends StatelessWidget {
  AccountsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAppBar(context),
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildAccountsGrid(context),
                                    SizedBox(height: 25.v),
                                    Text("Last Transaction",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 14.v),
                                    _buildRenewOneColumn(context),
                                    SizedBox(height: 27.v),
                                    _buildMyCardRow(context),
                                    SizedBox(height: 12.v),
                                    _buildCardColumn(context),
                                    SizedBox(height: 25.v),
                                    Text("Debit & Credit Overview",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 14.v),
                                    _buildViewColumn(context),
                                    SizedBox(height: 25.v),
                                    Text("Invoices Sent",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    _buildAppleTwentyOneColumn(context)
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 7.v),
        decoration: AppDecoration.white,
        child: Column(children: [
          CustomAppBar(
              leadingWidth: 48.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgMegaphone,
                  margin: EdgeInsets.only(left: 24.h, top: 5.v, bottom: 6.v)),
              centerTitle: true,
              title: AppbarTitle(text: "Accounts"),
              actions: [
                AppbarTrailingCircleimage(
                    imagePath: ImageConstant.imgEllipse37,
                    margin: EdgeInsets.symmetric(horizontal: 24.h))
              ]),
          SizedBox(height: 20.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search for something")),
          SizedBox(height: 13.v)
        ]));
  }

  /// Section Widget
  Widget _buildAccountsGrid(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 86.v,
            crossAxisCount: 2,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return AccountsgridItemWidget();
        });
  }

  /// Section Widget
  Widget _buildRenewOneColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.h),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 45.adaptSize,
                width: 45.adaptSize,
                padding: EdgeInsets.all(12.h),
                child: CustomImageView(imagePath: ImageConstant.imgRenew1)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Spotify Subscription",
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 3.v),
                      Text("25 Jan 2021", style: theme.textTheme.bodySmall)
                    ])),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                child: Text("-150", style: CustomTextStyles.labelLargeRed700))
          ]),
          SizedBox(height: 12.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 45.adaptSize,
                width: 45.adaptSize,
                padding: EdgeInsets.all(12.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgSettingsPrimary)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 4.v, bottom: 3.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mobile Service", style: theme.textTheme.titleSmall),
                      SizedBox(height: 4.v),
                      Text("25 Jan 2021", style: theme.textTheme.bodySmall)
                    ])),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                child: Text("-340", style: CustomTextStyles.labelLargeRed700))
          ]),
          SizedBox(height: 12.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 45.adaptSize,
                width: 45.adaptSize,
                padding: EdgeInsets.all(12.h),
                child: CustomImageView(imagePath: ImageConstant.imgUser21)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Emilly Wilson", style: theme.textTheme.titleSmall),
                      SizedBox(height: 3.v),
                      Text("25 Jan 2021", style: theme.textTheme.bodySmall)
                    ])),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                child: Text("+780", style: CustomTextStyles.labelLargeGreen600))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildMyCardRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("My Card", style: theme.textTheme.titleMedium),
      GestureDetector(
          onTap: () {
            onTapTxtSeeAll(context);
          },
          child: Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child:
                  Text("See All", style: CustomTextStyles.titleSmallSemiBold)))
    ]);
  }

  /// Section Widget
  Widget _buildCardColumn(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 17.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 51.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Balance", style: theme.textTheme.labelMedium),
                          SizedBox(height: 3.v),
                          Text("5,756",
                              style: CustomTextStyles.titleMediumOnPrimary_1)
                        ]),
                    CustomImageView(
                        imagePath: ImageConstant.imgChipCard,
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        margin: EdgeInsets.only(top: 4.v, bottom: 3.v))
                  ])),
          SizedBox(height: 17.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("CARD HOLDER",
                              style: theme.textTheme.labelMedium),
                          SizedBox(height: 1.v),
                          Text("Eddy Cusuma",
                              style: CustomTextStyles.titleSmallOnPrimary)
                        ]),
                    Padding(
                        padding: EdgeInsets.only(left: 41.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("VALID THRU",
                                  style: theme.textTheme.labelMedium),
                              SizedBox(height: 1.v),
                              Text("12/22",
                                  style: CustomTextStyles.titleSmallOnPrimary)
                            ]))
                  ]))),
          SizedBox(height: 11.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
              decoration: AppDecoration.gradientOnPrimaryToOnPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderBL15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("3778 **** **** 1234",
                            style: CustomTextStyles.titleSmallOnPrimary_1)),
                    CustomImageView(
                        imagePath: ImageConstant.imgUserOnprimary,
                        height: 18.v,
                        width: 27.h)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildViewColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 15.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(4.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text("Debit", style: theme.textTheme.bodySmall)),
                    Container(
                        width: 57.h,
                        margin: EdgeInsets.only(left: 20.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.only(bottom: 2.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo300,
                                      borderRadius:
                                          BorderRadius.circular(4.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("Credit",
                                      style: theme.textTheme.bodySmall))
                            ]))
                  ])),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup27,
                                height: 153.v,
                                width: 25.h,
                                margin: EdgeInsets.only(right: 9.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup27,
                                height: 120.v,
                                width: 25.h,
                                margin: EdgeInsets.only(
                                    left: 9.h, top: 33.v, right: 9.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgSettings,
                                height: 75.v,
                                width: 25.h,
                                margin: EdgeInsets.only(
                                    left: 9.h, top: 78.v, right: 9.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup27,
                                height: 129.v,
                                width: 25.h,
                                margin: EdgeInsets.only(
                                    left: 9.h, top: 24.v, right: 9.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup27,
                                height: 136.v,
                                width: 25.h,
                                margin: EdgeInsets.only(
                                    left: 9.h, top: 17.v, right: 9.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgSettings,
                                height: 96.v,
                                width: 25.h,
                                margin: EdgeInsets.only(
                                    left: 9.h, top: 57.v, right: 9.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup27,
                                height: 143.v,
                                width: 25.h,
                                margin: EdgeInsets.only(left: 9.h, top: 10.v)))
                      ])),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 7.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sat", style: theme.textTheme.bodySmall),
                        Text("Sun", style: theme.textTheme.bodySmall),
                        Text("Mon", style: theme.textTheme.bodySmall),
                        Text("Tue", style: theme.textTheme.bodySmall),
                        Text("Wed", style: theme.textTheme.bodySmall),
                        Text("Thu", style: theme.textTheme.bodySmall),
                        Text("Fri", style: theme.textTheme.bodySmall)
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildAppleTwentyOneColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.h),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 45.adaptSize,
                width: 45.adaptSize,
                padding: EdgeInsets.all(12.h),
                child: CustomImageView(imagePath: ImageConstant.imgApple21)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 6.v, bottom: 3.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Apple Store",
                          style: CustomTextStyles.titleSmallPrimary),
                      SizedBox(height: 2.v),
                      Text("5h ago", style: theme.textTheme.bodySmall)
                    ])),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                child:
                    Text("450", style: CustomTextStyles.titleSmallPrimaryBold))
          ]),
          SizedBox(height: 15.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 45.adaptSize,
                width: 45.adaptSize,
                padding: EdgeInsets.all(12.h),
                child: CustomImageView(imagePath: ImageConstant.imgUser21)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Michael",
                          style: CustomTextStyles.titleSmallPrimary),
                      SizedBox(height: 4.v),
                      Text("2 days ago", style: theme.textTheme.bodySmall)
                    ])),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                child:
                    Text("160", style: CustomTextStyles.titleSmallPrimaryBold))
          ]),
          SizedBox(height: 15.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 45.adaptSize,
                width: 45.adaptSize,
                padding: EdgeInsets.all(12.h),
                child:
                    CustomImageView(imagePath: ImageConstant.imgPlaystation1)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 6.v, bottom: 3.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Playstation",
                          style: CustomTextStyles.titleSmallPrimary),
                      SizedBox(height: 2.v),
                      Text("5 days ago", style: theme.textTheme.bodySmall)
                    ])),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                child:
                    Text("1085", style: CustomTextStyles.titleSmallPrimaryBold))
          ]),
          SizedBox(height: 15.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 45.adaptSize,
                width: 45.adaptSize,
                padding: EdgeInsets.all(12.h),
                child: CustomImageView(imagePath: ImageConstant.imgUser21)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("William",
                          style: CustomTextStyles.titleSmallPrimary),
                      SizedBox(height: 4.v),
                      Text("10 days ago", style: theme.textTheme.bodySmall)
                    ])),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                child:
                    Text("90", style: CustomTextStyles.titleSmallPrimaryBold))
          ])
        ]));
  }

  /// Navigates to the creditCardsScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardsScreen);
  }
}
