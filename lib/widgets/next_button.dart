import 'package:flutter/material.dart';
import 'package:quiz_app/screens/constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, required this.nextquiz}) : super(key: key);

  final VoidCallback nextquiz;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextquiz,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: coco,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: const Text(
          'next question',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
