import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_texts_style.dart';

class MaleFemale extends StatefulWidget {
  const MaleFemale({
    super.key,
    required this.icon,
    required this.text,
    required this.isTrue,
  });

  final IconData icon;
  final String text;
  final bool isTrue;

  @override
  State<MaleFemale> createState() => _MaleFemaleState();
}

class _MaleFemaleState extends State<MaleFemale> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          widget.icon,
          color: widget.isTrue ? Colors.red : null,
          size: 80,
        ),
        Text(
          widget.text,
          style: AppTextsStyles.titleStyle,
        ),
      ],
    );
  }
}
