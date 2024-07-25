import 'package:flutter/material.dart';
import 'package:wheatherapp/apps/utils/assets.dart';

class HomeWeatherIcon extends StatelessWidget {
  const HomeWeatherIcon({super.key, required this.nameIcon});
  final String nameIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width / 1.5,
      padding: const EdgeInsets.all(20),
      child: Image.asset(
        // 'assets/${nameIcon}.png',
        AssetsCustom.getLinkImg(nameIcon),
        fit: BoxFit.cover,
      ),
    );
  }
}
