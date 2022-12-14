import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonName
  }) : super(key: key);
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 108.h, bottom: 24.h, left: 33.3.w, right: 33.3.w),
      width: double.maxFinite,
      height: 66.7.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.r),
          color: AppColors.letsGoColor,
          border: Border.all(width: 4, color: const Color.fromRGBO(255, 255, 255, 0.21))),
      child: Text(
        buttonName,
        style: AppTextStyles.body15w7.copyWith(color: AppColors.whitetextColor),
      ),
    );
  }
}
