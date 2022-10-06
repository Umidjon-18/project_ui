import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';

// ignore: must_be_immutable
class TextContainer extends StatelessWidget {
  TextContainer({
    required this.text,
    this.color,
    Key? key,
  }) : super(key: key);
  String text;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120.h,
      width: 70.w,
      decoration: AppDecorations.defDecor.copyWith(
        color: AppColors.textColor1,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        text,
        style: AppTextStyles.head64w7.copyWith(
          color: color ?? AppColors.textColorDef,
        ),
      ),
    );
  }
}
