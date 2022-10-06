import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

class SecureComponent extends StatelessWidget {
  const SecureComponent({Key? key, this.margin}) : super(key: key);

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67.5.h,
      width: double.maxFinite,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.r),
        color: AppColors.secureBgColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 17.w,
        vertical: 9.h,
      ),
      child: Row(
        children: [
          Image.asset(Assets.images.secure, width: 49.w, height: 49.w),
          SizedBox(width: 7.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('secure'.tr(), style: AppTextStyles.body14w6),
              Text(
                'cancel'.tr(),
                style: AppTextStyles.body14w6.copyWith(color: const Color(0xff664EFF)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
