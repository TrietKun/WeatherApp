import 'package:flutter/material.dart';
import 'package:wheatherapp/models/weather.dart';
import 'package:wheatherapp/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherData> getWeatherCurrent() async {
    // Fetch weather data from API
    WeatherData result = await ApiRepository.callApiGetWeather();
    return result;
  }

  Future<List<WeatherDetail>> getWeatherDetail() async {
    // Fetch weather data from API
    List<WeatherDetail> result = await ApiRepository.callApiGetWeatherDetail();
    return result;
  }
}
