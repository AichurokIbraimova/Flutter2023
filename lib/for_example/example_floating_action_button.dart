import 'package:flutter/material.dart';

class ForButton extends StatefulWidget {
  const ForButton({
    super.key,
  });

  @override
  State<ForButton> createState() => _ForButtonState();
}

class _ForButtonState extends State<ForButton> {
  int salmak = 60;
  int jash = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('FloatingActionButton')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('salmak'),
            Text('$salmak'),
            Row(
              children: [
                Floating(
                  icon: const Icon(
                    Icons.remove,
                  ),
                  onPressed: () {
                    setState(() {
                      salmak--;
                    });
                  },
                ),
                Floating(
                  icon: Icon(
                    Icons.add,
                  ),
                  onPressed: () {
                    setState(() {
                      salmak++;
                    });
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              children: [
                const Text('jash'),
                Text('$jash'),
                Floating(
                  icon: const Icon(
                    Icons.remove,
                  ),
                  onPressed: () {
                    setState(() {
                      salmak--;
                    });
                  },
                ),
                Floating(
                  icon: const Icon(
                    Icons.add,
                  ),
                  onPressed: () {
                    setState(() {
                      salmak++;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Floating extends StatelessWidget {
  const Floating({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: icon,
    );
  }
}
