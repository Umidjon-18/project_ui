

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_ui/config/constants/app_colors.dart';
import 'package:project_ui/config/constants/app_decorations.dart';
import 'package:project_ui/config/constants/app_text_styles.dart';
import 'package:project_ui/config/constants/assets.dart';

import '../../components/custom_button.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.images.bgGradient,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 37.h,
                    left: 39.w,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        Assets.icons.cancel,
                      ),
                    ),
                  ),
                ),
                Text(
                  'TRY PREMIUM',
                  style: AppTextStyles.head36w7.copyWith(
                    color: AppColors.textColor1,
                  ),
                ),
                Text(
                  'FREE!',
                  style: AppTextStyles.head36w7.copyWith(
                    color: AppColors.freeColor,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.h, bottom: 23.46.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
                  decoration: AppDecorations.defDecor.copyWith(
                    color: AppColors.textColor2,
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Text(
                    'Limited Offer',
                    style: AppTextStyles.head32w7.copyWith(
                      color: AppColors.textColor1,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextContainer(text: '0'),
                      SizedBox(
                        width: 8.w,
                      ),
                      TextContainer(text: '4'),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Text(
                          ':',
                          style: AppTextStyles.head36w7,
                        ),
                      ),
                      TextContainer(
                        text: '5',
                        color: AppColors.textColor2,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      TextContainer(
                        text: '9',
                        color: AppColors.textColor2,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 23.54.h),
                  width: 319.w,
                  height: 261.h,
                  padding: EdgeInsets.only(
                    top: 34.1.h,
                    left: 20.w,
                    right: 20.w,
                  ),
                  decoration: AppDecorations.defDecor.copyWith(
                    color: AppColors.textColor1,
                    borderRadius: BorderRadius.circular(19.r),
                  ),
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '3 Days',
                          style: AppTextStyles.head29w7,
                          children: [
                            TextSpan(
                              text: 'Free',
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
                          'After',
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
                              text: '/ Month',
                              style: AppTextStyles.head16wB,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Billed every 12 months',
                        style: AppTextStyles.body15w6,
                      ),
                      Container(
                        height: 67.5.h,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top: 21.h),
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
                            Image.asset(Assets.images.secure,
                                width: 49.w, height: 49.w),
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
                                  style: AppTextStyles.body14w6
                                      .copyWith(color: const Color(0xff664EFF)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                CustomButton(
                  buttonName: "Try 3 Days For Free!",
                  margin: EdgeInsets.symmetric(
                    horizontal: 33.3.w,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 84.w, vertical: 24.h),
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
        ],
      ),
    );
  }
}

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
