class WeatherModel {
  final String cityName;
  final String countryName;
  final double temperatureC;
  final String condition;
  final String conditionIcon;

  WeatherModel({
    required this.cityName,
    required this.countryName,
    required this.temperatureC,
    required this.condition,
    required this.conditionIcon,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      countryName: json['location']['country'],
      temperatureC: json['current']['temp_c'].toDouble(),
      condition: json['current']['condition']['text'],
      conditionIcon: json['current']['condition']['icon'],
    );
  }
}