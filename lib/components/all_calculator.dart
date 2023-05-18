import 'dart:math';

class BmiCalculator {
  double bmi({required double height, required int weight}) {
    final res = weight / pow(height / 100, 2);
    return res;
  }

  String bmiResult(res) {
    if (res <= 18.5) {
      // print('Сиз арыксыз:$res');
      return 'Сиз арыксыз';
    } else if (res >= 18.6 && res <= 25) {
      // print('Сиздин салмагыныз  нормалдуу:$res');
      return 'Нормалдуу';
    } else if (res >= 25.1 && res <= 30) {
      //rint('Сиз ашыкча салмактуусуз:$res');
      return 'Сиз ашыкча салмактуусуз';
    } else {
      //print('Сиз семиссиз:$res');
      return 'Сиз семиссиз';
    }
  }

  String bmiDescriptoin(res) {
    if (res <= 18.5) {
      // print('Сиз арыксыз:$res');
      return 'Сиз арыксыз, тамактануу норманызды карап коюнуз шарт';
    } else if (res >= 18.6 && res <= 25) {
      // print('Сиздин салмагыныз  нормалдуу:$res');
      return 'Сиздин дене салмагыныз нормалдуу. Азаматсыз!';
    } else if (res >= 25.1 && res <= 30) {
      //rint('Сиз ашыкча салмактуусуз:$res');
      return 'Сиз ашыкча салмактуу экенсиз, спорт менен алектениниз!!!';
    } else {
      //print('Сиз семиссиз:$res');
      return 'Сиз семизсиз, срочно фитнес клубка барыныз!! Аз жениз!!';
    }
  }
}
