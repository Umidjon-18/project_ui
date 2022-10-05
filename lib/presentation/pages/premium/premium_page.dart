import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.borderColor.withOpacity(.5),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.icons.cancel,
            ),
          ),
        ),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    decoration: AppDecorations.defDecor.copyWith(
                      color: AppColors.textColor2,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text(
                      'Limited offer',
                      style: AppTextStyles.head32w5.copyWith(
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
                        TextContainer(text: '4'),
                        Text(
                          ':',
                          style: AppTextStyles.head64w7,
                        ),
                        TextContainer(
                          text: '5',
                          color: AppColors.textColor2,
                        ),
                        TextContainer(
                          text: '9',
                          color: AppColors.textColor2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 261,
                    decoration: AppDecorations.defDecor.copyWith(
                      color: AppColors.textColor1,
                      borderRadius: BorderRadius.circular(19),
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
                        Text(
                          'After',
                          style: AppTextStyles.body15w4,
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
                        Text(
                          'Billed every 12 months',
                          style: AppTextStyles.body15w6,
                        ),
                        
                      ],
                    ),
                  ),
                  const CustomButton(buttonName: "Try 3 Days For Free!"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
      margin: const EdgeInsets.symmetric(horizontal: 4),
      alignment: Alignment.center,
      height: 120,
      width: 70,
      decoration: AppDecorations.defDecor.copyWith(
        color: AppColors.textColor1,
        borderRadius: BorderRadius.circular(10),
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
