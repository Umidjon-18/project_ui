import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/constants/app_text_styles.dart';

class RoutineItem extends StatelessWidget {
  const RoutineItem({
    Key? key,
    required this.imagePath,
    required this.routineItemName,
  }) : super(key: key);
  final String imagePath;
  final String routineItemName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 94.w,
          height: 94.h,
          child: SvgPicture.asset(imagePath),
        ),
        Text(routineItemName, style: AppTextStyles.body14w5),
      ],
    );
  }
}
