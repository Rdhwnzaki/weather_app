import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  static const String _apiKey = "QCFXxtsiUNW33dmoDUqiew8WszWbIcn4";
  static const String _baseUrl = "https://api.tomorrow.io/v4/weather";

  Future<WeatherModel?> fetchWeather(String city) async {
    final url =
        '$_baseUrl/forecast?location=$city&timesteps=daily&apikey=$_apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      return null;
    }
  }
}
