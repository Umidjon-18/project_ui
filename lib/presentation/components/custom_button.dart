import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.buttonName,
    this.margin,
  }) : super(key: key);
  final String buttonName;
  EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          EdgeInsets.only(
            bottom: 24.h,
            left: 33.3.w,
            right: 33.3.w,
          ),
      width: double.maxFinite,
      height: 66.7.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.r),
          color: AppColors.letsGoColor,
          border: Border.all(width: 4.h, color: const Color.fromRGBO(255, 255, 255, 0.21))),
      child: Text(
        buttonName,
        style: AppTextStyles.body15w7.copyWith(color: AppColors.whitetextColor),
      ),
    );
  }
}
