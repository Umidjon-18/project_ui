import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_ui/config/constants/app_colors.dart';
import 'package:project_ui/config/constants/app_text_styles.dart';

import '../../../config/constants/assets.dart';
import '../../components/custom_button.dart';
import '../../routes/routes.dart';
import 'components/routine_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(
                    Assets.images.bgGradient,
                  ),
                  fit: BoxFit.cover,
                ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 37.4.w, right: 37.4.w, top: 40.1.h, bottom: 52.2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(Assets.images.cancel),
                  Text(
                    'Restore',
                    style: AppTextStyles.head12w4,
                  )
                ],
              ),
            ),
            Text(
              'UNLOCK ALL FEATURES',
              style: AppTextStyles.body24w700.copyWith(color: AppColors.whitetextColor, height: 1.084),
            ),
            Text(
              'Build Your Perfect Morning Routine',
              style: AppTextStyles.body15w5.copyWith(color: AppColors.whitetextColor, height: 1.2),
            ),
            Padding(
              padding: EdgeInsets.only(left: 43.5.w, right: 43.5.w, top: 23.5.h, bottom: 42.7.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoutineItem(imagePath: Assets.images.fitness, routineItemName: 'Fitness'),
                      RoutineItem(imagePath: Assets.images.visualization, routineItemName: 'Visualization'),
                      RoutineItem(imagePath: Assets.images.meditation, routineItemName: 'Meditations'),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoutineItem(imagePath: Assets.images.reading, routineItemName: 'Reading'),
                      RoutineItem(imagePath: Assets.images.notes, routineItemName: 'Notes'),
                      RoutineItem(imagePath: Assets.images.affirmation, routineItemName: 'Affirmations'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 320.w,
              height: 170.h,
              padding: EdgeInsets.symmetric(vertical: 15.8.h, horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19.r),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text('2.91 USD / month', style: AppTextStyles.body24w700.copyWith(color: AppColors.letsGoColor)),
                  Text('Billed every 12 months', style: AppTextStyles.body18w6),
                  Container(
                    height: 67.5.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 10.h),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(21.r), color: AppColors.secureBgColor),
                    padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 9.h),
                    child: Row(
                      children: [
                        Image.asset(Assets.images.secure, width: 49.w, height: 49.w),
                        SizedBox(width: 7.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Secured with Apple Store',
                              style: AppTextStyles.body14w6,
                            ),
                            Text(
                              'Cancel anytime',
                              style: AppTextStyles.body14w6.copyWith(color: const Color(0xff664EFF)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, Routes.premiumPage),
              child:  CustomButton(buttonName: "Let's go!")),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 84.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Privacy Policy', style: AppTextStyles.head12w4),
                  Text('Term of Use', style: AppTextStyles.head12w4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

