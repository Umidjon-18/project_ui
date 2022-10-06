import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_ui/config/constants/app_colors.dart';
import 'package:project_ui/config/constants/app_text_styles.dart';

import '../../../config/constants/assets.dart';
import '../../components/custom_button.dart';
import '../../components/secure_component.dart';
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
          image: DecorationImage(
            image: AssetImage(Assets.images.bgGradient),
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
                    'restore'.tr(),
                    style: AppTextStyles.head12w4,
                  )
                ],
              ),
            ),
            Text(
              'unlockFeature'.tr(),
              textAlign: TextAlign.center,
              style: AppTextStyles.body24w700.copyWith(color: AppColors.whitetextColor, height: 1.084),
            ),
            Text(
              'buildRoutine'.tr(),
              style: AppTextStyles.body15w5.copyWith(color: AppColors.whitetextColor, height: 1.2),
            ),
            Padding(
              padding: EdgeInsets.only(left: 43.5.w, right: 43.5.w, top: 23.5.h, bottom: 42.7.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoutineItem(imagePath: Assets.images.fitness, routineItemName: 'fitness'.tr()),
                      RoutineItem(imagePath: Assets.images.visualization, routineItemName: 'visualization'.tr()),
                      RoutineItem(imagePath: Assets.images.meditation, routineItemName: 'meditations'.tr()),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoutineItem(imagePath: Assets.images.reading, routineItemName: 'reading'.tr()),
                      RoutineItem(imagePath: Assets.images.notes, routineItemName: 'notes'.tr()),
                      RoutineItem(imagePath: Assets.images.affirmation, routineItemName: 'affirmations'.tr()),
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
                color: AppColors.whitetextColor,
              ),
              child: Column(
                children: [
                  Text('2.91 USD / ${'month'.tr().toLowerCase()}',
                      style: AppTextStyles.body24w700.copyWith(color: AppColors.letsGoColor)),
                  Text('everyMonth'.tr(), style: AppTextStyles.body18w6),
                  SecureComponent(margin: EdgeInsets.only(top: 10.h)),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, Routes.premiumPage),
                child: CustomButton(buttonName: "letsGo".tr())),
            Padding(
              padding: EdgeInsets.only(bottom: 26.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('privacy'.tr(), style: AppTextStyles.head12w4),
                  Text('termUse'.tr(), style: AppTextStyles.head12w4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
