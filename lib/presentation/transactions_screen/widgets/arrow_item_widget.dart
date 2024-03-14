import 'package:amjad_s_application6/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class ArrowItemWidget extends StatelessWidget {
  const ArrowItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 2.v,
            ),
            child: CustomIconButton(
              height: 35.adaptSize,
              width: 35.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineGreen,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowGreen600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Freepik Sales",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  "25 Jan, 10.40 PM",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 10.v,
            ),
            child: Text(
              "+750",
              style: CustomTextStyles.titleSmallGreen600_1,
            ),
          ),
        ],
      ),
    );
  }
}
