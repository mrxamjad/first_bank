import 'package:amjad_s_application6/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:amjad_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class LoansItemWidget extends StatelessWidget {
  const LoansItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 221.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
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
                  imagePath: ImageConstant.imgUser32,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Personal Loans",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "50,000",
                      style: CustomTextStyles.titleMediumPrimary_1,
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
}
