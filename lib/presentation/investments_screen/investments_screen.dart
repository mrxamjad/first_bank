import 'package:amjad_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:amjad_s_application6/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:amjad_s_application6/widgets/custom_search_view.dart';
import 'widgets/moneybagofdollars_item_widget.dart';
import 'widgets/applestore_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

class InvestmentsScreen extends StatelessWidget {
  InvestmentsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

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
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildMoneyBagOfDollars(context),
                        SizedBox(height: 27.v),
                        Text(
                          "Yearly Total Investment",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 12.v),
                        _buildChart(
                          context,
                          price1: "40,000",
                          price2: "30,000",
                          price3: "20,000",
                          price4: "10,000",
                          price5: "0",
                          image: ImageConstant.imgGroup1045,
                          zipcode: "2016",
                          zipcode1: "2017",
                          zipcode2: "2018",
                          zipcode3: "2019",
                          zipcode4: "2020",
                          zipcode5: "2021",
                        ),
                        SizedBox(height: 27.v),
                        Text(
                          "Monthly Revenue",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 12.v),
                        _buildChart(
                          context,
                          price1: "40,000",
                          price2: "30,000",
                          price3: "20,000",
                          price4: "10,000",
                          price5: "0",
                          image: ImageConstant.imgGroup1049,
                          zipcode: "2016",
                          zipcode1: "2017",
                          zipcode2: "2018",
                          zipcode3: "2019",
                          zipcode4: "2020",
                          zipcode5: "2021",
                        ),
                        SizedBox(height: 27.v),
                        Text(
                          "My Investment",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 12.v),
                        _buildAppleStore(context),
                        SizedBox(height: 27.v),
                        Text(
                          "Trending Stock",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 12.v),
                        _buildSlNo(context),
                      ],
                    ),
                  ),
                ),
              ),
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
              text: "Investments",
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
  Widget _buildMoneyBagOfDollars(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 16.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return MoneybagofdollarsItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildAppleStore(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 10.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return ApplestoreItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildSlNo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 20.h),
            child: Row(
              children: [
                Text(
                  "SL No",
                  style: CustomTextStyles.labelLargeBluegray40001,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text(
                    "Name",
                    style: CustomTextStyles.labelLargeBluegray40001,
                  ),
                ),
                Spacer(
                  flex: 52,
                ),
                Text(
                  "Price",
                  style: CustomTextStyles.labelLargeBluegray40001,
                ),
                Spacer(
                  flex: 47,
                ),
                Text(
                  "Return",
                  style: CustomTextStyles.labelLargeBluegray40001,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            color: appTheme.gray100,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 32.h),
            child: _buildFour(
              context,
              four: "01.",
              nokia: "Trivago",
              price: "520",
              two: "+5%",
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 26.h),
            child: Row(
              children: [
                Text(
                  "02.",
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 24,
                ),
                Text(
                  "Canon",
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 39,
                ),
                Text(
                  "480",
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 36,
                ),
                Text(
                  "+10%",
                  style: CustomTextStyles.labelLargeTealA400,
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 35.h),
            child: Row(
              children: [
                Text(
                  "03.",
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 28,
                ),
                Text(
                  "Uber Food",
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 27,
                ),
                Text(
                  "350",
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 43,
                ),
                Text(
                  "-3%",
                  style: CustomTextStyles.labelLargePinkA200,
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 32.h),
            child: _buildFour(
              context,
              four: "04.",
              nokia: "Nokia",
              price: "940",
              two: "+2%",
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 29.h),
            child: Row(
              children: [
                Text(
                  "05.",
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 24,
                ),
                Text(
                  "Tiktok",
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 39,
                ),
                Text(
                  "670",
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 36,
                ),
                Text(
                  "-12%",
                  style: CustomTextStyles.labelLargePinkA200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildChart(
    BuildContext context, {
    required String price1,
    required String price2,
    required String price3,
    required String price4,
    required String price5,
    required String image,
    required String zipcode,
    required String zipcode1,
    required String zipcode2,
    required String zipcode3,
    required String zipcode4,
    required String zipcode5,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 20.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price1,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
                SizedBox(height: 24.v),
                Text(
                  price2,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
                SizedBox(height: 24.v),
                Text(
                  price3,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
                SizedBox(height: 24.v),
                Text(
                  price4,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
                SizedBox(height: 23.v),
                Text(
                  price5,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 13.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: image,
                    height: 157.v,
                    width: 232.h,
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          zipcode,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                        Text(
                          zipcode1,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                        Text(
                          zipcode2,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                        Text(
                          zipcode3,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                        Text(
                          zipcode4,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                        Text(
                          zipcode5,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFour(
    BuildContext context, {
    required String four,
    required String nokia,
    required String price,
    required String two,
  }) {
    return Row(
      children: [
        Text(
          four,
          style: CustomTextStyles.bodySmallBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Spacer(
          flex: 23,
        ),
        Text(
          nokia,
          style: CustomTextStyles.bodySmallBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Spacer(
          flex: 41,
        ),
        Text(
          price,
          style: CustomTextStyles.bodySmallBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Spacer(
          flex: 35,
        ),
        Text(
          two,
          style: CustomTextStyles.labelLargeTealA400.copyWith(
            color: appTheme.tealA400,
          ),
        ),
      ],
    );
  }
}
