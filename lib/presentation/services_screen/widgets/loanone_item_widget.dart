import 'package:amjad_s_application6/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class LoanoneItemWidget extends StatelessWidget {
  const LoanoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLoan1,
              ),
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
                    "Business loans",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "It is a long established ",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 15.v,
                bottom: 16.v,
              ),
              child: Text(
                "View Details",
                style: CustomTextStyles.labelMediumIndigo500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
