import 'package:flutter/material.dart';
import 'package:wheatherapp/page/bottom_navigation_custom/bottom_custom.dart';
import 'package:wheatherapp/provider/weather_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        title: 'Weather App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const BottomNavigationCustom(),
      ),
    );
  }
}
