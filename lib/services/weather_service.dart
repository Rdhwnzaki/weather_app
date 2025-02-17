import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  static const String _apiKey = "QCFXxtsiUNW33dmoDUqiew8WszWbIcn4";
  static const String _baseUrl = "https://api.tomorrow.io/v4/weather";

  Future<Weather> getWeather(String city) async {
    final url = '$_baseUrl/realtime?location=$city&apikey=$_apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Weather.fromJson(data);
    } else {
      throw Exception("Gagal mengambil data cuaca.");
    }
  }
}
