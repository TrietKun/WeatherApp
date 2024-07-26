import 'package:flutter/material.dart';

class AssetsCustom {
  static String getLinkImg(String name) =>
      'assets/${name.replaceAll(' ', '').toLowerCase()}.png';
}

class MyKey {
  static const String api_token = '949dddde042a4469741e42ddf94a34a0';
}

Widget createTemp(num temp, {double size = 100}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        //làm tròn 1 chữ số thập phân
        temp.toStringAsFixed(1),
        style: TextStyle(
          fontSize: size,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        '0',
        style: TextStyle(
          fontSize: 36 / 3,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  );
}
