import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_ui/config/constants/app_colors.dart';
import 'package:project_ui/config/constants/app_decorations.dart';
import 'package:project_ui/config/constants/app_text_styles.dart';
import 'package:project_ui/config/constants/assets.dart';

import '../../components/custom_button.dart';
import '../../components/secure_component.dart';
import 'components/text_container.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.bgGradient,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 19.h, left: 21.w),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset(
                    Assets.icons.cancel,
                  ),
                ),
              ),
            ),
            Text(
              'tryPremium'.tr(),
              style: AppTextStyles.head36w7.copyWith(
                color: AppColors.textColor1,
              ),
            ),
            Text(
              '${'free'.tr().toUpperCase()}!',
              style: AppTextStyles.head36w7.copyWith(
                color: AppColors.freeColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8.h, bottom: 23.46.h),
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
              decoration: AppDecorations.defDecor.copyWith(
                color: AppColors.textColor2,
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: Text(
                'limitedOffer'.tr(),
                style: AppTextStyles.head29w7.copyWith(
                  color: AppColors.textColor1,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextContainer(text: '0'),
                SizedBox(
                  width: 8.w,
                ),
                TextContainer(text: '4'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Text(':', style: AppTextStyles.head36w7),
                ),
                TextContainer(text: '5', color: AppColors.textColor2),
                SizedBox(
                  width: 8.w,
                ),
                TextContainer(text: '9', color: AppColors.textColor2),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 23.54.h),
              width: 319.w,
              height: 261.h,
              padding: EdgeInsets.only(top: 34.1.h, left: 20.w, right: 20.w),
              decoration: AppDecorations.defDecor.copyWith(
                color: AppColors.textColor1,
                borderRadius: BorderRadius.circular(19.r),
              ),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: '3 ${'days'.tr()} ',
                      style: AppTextStyles.head29w7,
                      children: [
                        TextSpan(
                          text: 'free'.tr(),
                          style: AppTextStyles.head29w7.copyWith(
                            color: AppColors.textColor2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.2.h),
                    child: Text(
                      'after'.tr(),
                      style: AppTextStyles.body15w4,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '2.91 USD ',
                      style: AppTextStyles.head20wB.copyWith(
                        color: AppColors.textColor2,
                      ),
                      children: [
                        TextSpan(
                          text: '/ ${'month'.tr()}',
                          style: AppTextStyles.head16wB,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'everyMonth'.tr(),
                    style: AppTextStyles.body15w6,
                  ),
                  SecureComponent(margin: EdgeInsets.only(top: 21.h)),
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
              buttonName: "tryDaysForFree".tr(),
              margin: EdgeInsets.symmetric(horizontal: 33.3.w),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
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
