import 'package:flutter/material.dart';

class HomeTempurature extends StatelessWidget {
  const HomeTempurature({super.key, required this.temp});

  final num temp;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          //làm tròn 1 chữ số thập phân
          temp.toStringAsFixed(1),
          style: const TextStyle(
            fontSize: 100,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '0',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
