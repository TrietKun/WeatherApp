import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeLocation extends StatelessWidget {
  const HomeLocation({super.key, required this.namelocation});

  final String namelocation;
  @override
  Widget build(BuildContext context) {
    final df = DateFormat('dd-MM-yyyy');
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/fluent_location-48-regular.png'),
            const SizedBox(width: 17),
            Text(
              namelocation,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ],
        ),
        SizedBox(height: 17),
        Text(
          df.format(DateTime.now()),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
