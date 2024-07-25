import 'package:dio/dio.dart';
import 'package:wheatherapp/models/weather.dart';
import 'package:wheatherapp/apps/utils/assets.dart';

class ApiRepository {
  static Future<WeatherData> callApiGetWeather() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=10.83522208148113&lon=106.63076068985572&units=metric&appid=${MyKey.api_token}');
      final data = res.data;
      WeatherData result = WeatherData.fromMap(data);
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }
}
