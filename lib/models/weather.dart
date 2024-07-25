import 'dart:convert';

class Weather {
  int id;
  String main;
  String description;
  String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'main': main,
      'description': description,
      'icon': icon,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      id: map['id'] as int? ?? 0,
      main: map['main'] as String? ?? 'Unknown',
      description: map['description'] as String? ?? 'No description',
      icon: map['icon'] as String? ?? 'unknown',
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Main {
  num temp;
  num feelsLike;
  num tempMin;
  num tempMax;
  num pressure;
  num humidity;

  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory Main.fromMap(Map<String, dynamic> map) {
    return Main(
      temp: map['temp'] as num? ?? 0,
      feelsLike: map['feels_like'] as num? ?? 0,
      tempMin: map['temp_min'] as num? ?? 0,
      tempMax: map['temp_max'] as num? ?? 0,
      pressure: map['pressure'] as num? ?? 0,
      humidity: map['humidity'] as num? ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Main.fromJson(String source) =>
      Main.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'temp': temp,
      'feels_like': feelsLike,
      'temp_min': tempMin,
      'temp_max': tempMax,
      'pressure': pressure,
      'humidity': humidity,
    };
  }
}

class Wind {
  num speed;
  num deg;

  Wind({
    required this.speed,
    required this.deg,
  });

  factory Wind.fromMap(Map<String, dynamic> map) {
    return Wind(
      speed: map['speed'] as num? ?? 0,
      deg: map['deg'] as num? ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Wind.fromJson(String source) =>
      Wind.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'speed': speed,
      'deg': deg,
    };
  }
}

class WeatherData {
  List<Weather> weather;
  String base;
  Main main;
  int visibility;
  Wind wind;
  int dt;
  int timezone;
  int id;
  String name;
  int cod;

  WeatherData({
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.dt,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  factory WeatherData.fromMap(Map<String, dynamic> map) {
    return WeatherData(
      weather: List<Weather>.from(
        (map['weather'] as List).map<Weather>(
          (x) => Weather.fromMap(x as Map<String, dynamic>),
        ),
      ),
      base: map['base'] as String? ?? 'Unknown',
      main: Main.fromMap(map['main'] as Map<String, dynamic>),
      visibility: map['visibility'] as int? ?? 0,
      wind: Wind.fromMap(map['wind'] as Map<String, dynamic>),
      dt: map['dt'] as int? ?? 0,
      timezone: map['timezone'] as int? ?? 0,
      id: map['id'] as int? ?? 0,
      name: map['name'] as String? ?? 'Unknown',
      cod: map['cod'] as int? ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherData.fromJson(String source) =>
      WeatherData.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weather': weather.map((x) => x.toMap()).toList(),
      'base': base,
      'main': main.toMap(),
      'visibility': visibility,
      'wind': wind.toMap(),
      'dt': dt,
      'timezone': timezone,
      'id': id,
      'name': name,
      'cod': cod,
    };
  }
}
