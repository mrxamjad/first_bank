import 'package:amjad_s_application6/widgets/custom_icon_button.dart';
import 'package:amjad_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:amjad_s_application6/widgets/custom_search_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/balanceslider_item_widget.dart';
import 'widgets/creditcardslist_item_widget.dart';
import 'package:amjad_s_application6/widgets/custom_text_form_field.dart';
import 'package:amjad_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

class CreditCardsScreen extends StatelessWidget {
  CreditCardsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  TextEditingController classicController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildAppBar(context),
                SizedBox(height: 27.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Column(
                        children: [
                          _buildMyCardsRow(context),
                          SizedBox(height: 12.v),
                          _buildBalanceSlider(context),
                          SizedBox(height: 27.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text(
                                "Card Expense Statistics",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 12.v),
                          _buildBankView(context),
                          SizedBox(height: 25.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text(
                                "Card List",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 14.v),
                          _buildCreditCardsList(context),
                          SizedBox(height: 26.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text(
                                "Add New Card",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildAddNewCardColumn(context),
                          SizedBox(height: 27.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text(
                                "Card Setting",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 12.v),
                          _buildBlockCardColumn(context),
                        ],
                      ),
                    ),
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
  Widget _buildAppBar(BuildContext context) {
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
              text: "Credit Cards",
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

  /// Section Widget
  Widget _buildMyCardsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "My Cards",
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "See All",
              style: CustomTextStyles.titleSmallSemiBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBalanceSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 170.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 2,
        itemBuilder: (context, index, realIndex) {
          return BalancesliderItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBankView(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 63.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup346Chart,
            height: 191.v,
            width: 200.h,
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                      decoration: BoxDecoration(
                        color: appTheme.indigo100,
                        borderRadius: BorderRadius.circular(
                          6.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "DBL Bank",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                      decoration: BoxDecoration(
                        color: appTheme.indigo500,
                        borderRadius: BorderRadius.circular(
                          6.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "BRC Bank",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      right: 8.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "ABM Bank",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                          decoration: BoxDecoration(
                            color: appTheme.indigo300,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "MCP Bank",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreditCardsList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 12.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return CreditcardslistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCardTypeColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Card Type",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: classicController,
          hintText: "Classic",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNameOnCardColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name On Card",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: nameController,
          hintText: "My Cards",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCardNumberColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Card Number",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: cardNumberController,
          hintText: "**** **** **** ****",
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildExpirationDateColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Expiration Date",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: expirationDateController,
          hintText: "25 January 2025",
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddNewCardColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 283.h,
            child: Text(
              "Credit Card generally means a plastic card issued by Scheduled Commercial Banks assigned to a Cardholder, with a credit limit, that can be used to purchase goods and services on credit or obtain cash advances.",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 17.v),
          _buildCardTypeColumn(context),
          SizedBox(height: 17.v),
          _buildNameOnCardColumn(context),
          SizedBox(height: 17.v),
          _buildCardNumberColumn(context),
          SizedBox(height: 18.v),
          _buildExpirationDateColumn(context),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            height: 40.v,
            text: "Add Card",
            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBlockCardColumn(BuildContext context) {
    return Container(
      width: 325.h,
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup165,
                height: 45.adaptSize,
                width: 45.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 4.v,
                  bottom: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Block Card",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "Instantly block your card",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 75.h),
            child: _buildGoogleGlassLogoRow(
              context,
              dynamicProperty2: "Change Pic Code",
              dynamicProperty3: "Withdraw without any card",
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 75.h),
            child: _buildGoogleGlassLogoRow(
              context,
              dynamicProperty2: "Add to Google Pay",
              dynamicProperty3: "Withdraw without any card",
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 75.h),
            child: _buildGoogleGlassLogoRow(
              context,
              dynamicProperty2: "Add to Apple Pay",
              dynamicProperty3: "Withdraw without any card",
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 75.h),
            child: _buildGoogleGlassLogoRow(
              context,
              dynamicProperty2: "Add to Apple Store",
              dynamicProperty3: "Withdraw without any card",
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildGoogleGlassLogoRow(
    BuildContext context, {
    required String dynamicProperty2,
    required String dynamicProperty3,
  }) {
    return Row(
      children: [
        CustomIconButton(
          height: 45.adaptSize,
          width: 45.adaptSize,
          padding: EdgeInsets.all(12.h),
          child: CustomImageView(
            imagePath: ImageConstant.img003GoogleGlassLogo,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dynamicProperty2,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.blueGray900,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  dynamicProperty3,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
