import 'package:amjad_s_application6/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class MoneybagofdollarsItemWidget extends StatelessWidget {
  const MoneybagofdollarsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillGrayTL22,
            child: CustomImageView(
              imagePath: ImageConstant.imgMoneyBagOfDollars,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Invested Amount",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 6.v),
                Text(
                  "150,000",
                  style: CustomTextStyles.titleMediumPrimary_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
