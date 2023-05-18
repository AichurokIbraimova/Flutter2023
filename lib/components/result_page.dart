import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu4/components/all_calculator.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_colors.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_texts.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_texts_style.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.metri, required this.salmak});
  final double metri;
  final int salmak;

  @override
  Widget build(BuildContext context) {
    double resultattar = BmiCalculator().bmi(height: metri, weight: salmak);
    return Scaffold(
      backgroundColor: AppColors.bgcColor,
      appBar: AppBar(
        title: const Text('ResultPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 11, right: 9, top: 43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Жыйынтык',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 315,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.cardColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    BmiCalculator().bmiResult(resultattar),
                    style: AppTextsStyles.normalduu,
                    // selectionColor: AppColors.normalduu,
                  ),
                  Text(
                    resultattar.toStringAsFixed(1),
                    style: const TextStyle(fontSize: 80),
                  ),
                  Text(
                    BmiCalculator().bmiDescriptoin(resultattar),
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.pinkColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.zero,
            ),
          ),
          minimumSize: const Size(
            double.infinity,
            73,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          AppTexts.kayraEsepte,
          style: AppTextsStyles.calculateTextStyle,
        ),
      ),
    );
  }
}
