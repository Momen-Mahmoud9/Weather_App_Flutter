import 'package:dio/dio.dart';

import '../Models/WeatherModel.dart';

class WeatherService {
  static Dio dio = Dio();

  static Future<WeatherModel> getWeatherByCity({required String city}) async {
    try {
      final response = await dio.get(
        "https://api.weatherapi.com/v1/current.json?q=$city&key=805d8e4621234f858ee72953251903",
      );
      if(response.statusCode==200)
        {
          return WeatherModel.fromJson(response.data);
        }
      else
        {
          throw Exception("Error");
        }
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}