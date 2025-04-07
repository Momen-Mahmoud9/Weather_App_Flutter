import 'package:flutter/cupertino.dart';

import '../Models/WeatherModel.dart';
import '../Servcies/WeatherService.dart';

class WeatherProvider with ChangeNotifier {
  WeatherModel? weather;
  String? ErrorMes;

  Future<void> fetchWeatherByCity(String city) async {
    try {
      weather = await WeatherService.getWeatherByCity(city: city);
    }
    catch (e)
    {
      ErrorMes= e.toString();
    }
    notifyListeners();
  }
}