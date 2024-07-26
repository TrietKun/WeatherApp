import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wheatherapp/models/weather.dart';
import 'package:wheatherapp/page/home/widget/home_weather_icon.dart';
import 'package:wheatherapp/page/home/widget/home_tempurature.dart';
import 'package:wheatherapp/page/home/widget/home_location.dart';
import 'package:wheatherapp/page/home/widget/home_detail_weather.dart';
import 'package:wheatherapp/provider/weather_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1D6CF3), Color(0xff19D2FE)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherCurrent(),
          initialData: null,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            WeatherData data = snapshot.data as WeatherData;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeWeatherIcon(
                  nameIcon: data.weather[0].icon,
                ),
                HomeTempurature(
                  temp: data.main.temp,
                ),
                HomeLocation(
                  namelocation: data.name,
                ),
                const SizedBox(height: 20),
                 HomeDetailWeather(wind: data.wind.speed,humidity: data.main.humidity,),
              ],
            );
          },
        ),
      ),
    );
  }
}
