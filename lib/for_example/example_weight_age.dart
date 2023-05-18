import 'package:flutter/material.dart';

class WeightAgeexample extends StatefulWidget {
  const WeightAgeexample({super.key});

  @override
  State<WeightAgeexample> createState() => _WeightAgeexampleState();
}

class _WeightAgeexampleState extends State<WeightAgeexample> {
  int Inkrement = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeightAge'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$Inkrement'),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  Inkrement++;
                });

                print(Inkrement);
              },
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
