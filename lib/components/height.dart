import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_colors.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_texts_style.dart';

class Height extends StatelessWidget {
  const Height({
    super.key,
    required this.text,
    required this.text1,
    required this.text2,
    required this.height,
    required this.onChanged,
  });

  final String text;
  final String text1;
  final String text2;
  final double height;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppTextsStyles.calculateTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              text1,
              style: AppTextsStyles.textStyle,
            ),
            Text(
              text2,
              style: AppTextsStyles.cmStyle,
            )
          ],
        ),
        SizedBox(
          width: 300,
          child: Slider.adaptive(
              value: height,
              min: 0,
              max: 240,
              activeColor: AppColors.whiteColor,
              thumbColor: AppColors.pinkColor,
              onChanged: onChanged),
        ),
      ],
    );
  }
}
