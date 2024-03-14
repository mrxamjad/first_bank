import 'package:amjad_s_application6/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class AccountsgridItemWidget extends StatelessWidget {
  const AccountsgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillGrayTL22,
            child: CustomImageView(
              imagePath: ImageConstant.imgMoneyTag1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "My Balance",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  "12,750",
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
