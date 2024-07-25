import 'package:flutter/material.dart';

class HomeDetailWeather extends StatelessWidget {
  const HomeDetailWeather(
      {super.key, required this.wind, required this.humidity});

  final num wind;
  final num humidity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset('assets/ph_wind.png'),
            Text(
              wind.toString() + ' km/s',
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Image.asset('assets/humidity.png'),
            Text(
              humidity.toString() + '%',
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
