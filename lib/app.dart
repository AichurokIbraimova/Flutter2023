import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu4/components/weight_age.dart';
import 'package:sabak20_bmi_ulantuu4/for_example/example.dart';
import 'package:sabak20_bmi_ulantuu4/for_example/example_floating_action_button.dart';
import 'package:sabak20_bmi_ulantuu4/for_example/example_weight_age.dart';
import 'package:sabak20_bmi_ulantuu4/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        // home: ForButton());
        //home: WeightAgeexample());
        home: const MyHomePage());
    // home: ForExample());
  }
}
