import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class ApplestoreItemWidget extends StatelessWidget {
  const ApplestoreItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 45.adaptSize,
            width: 45.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Apple Store",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  "E-commerce, Marketplace",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              right: 4.h,
              bottom: 13.v,
            ),
            child: Text(
              "+16%",
              style: CustomTextStyles.titleSmallGreen600,
            ),
          ),
        ],
      ),
    );
  }
}
