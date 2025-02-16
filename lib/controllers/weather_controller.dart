import 'package:get/get.dart';
import '../models/weather_model.dart';
import '../services/weather_service.dart';

class WeatherController extends GetxController {
  final WeatherService _weatherService = WeatherService();
  var weather = Rxn<WeatherModel>();
  var isLoading = false.obs;
  var errorMessage = "".obs;

  void fetchWeather(String city) async {
    try {
      isLoading.value = true;
      final data = await _weatherService.fetchWeather(city);
      if (data != null) {
        weather.value = data;
        errorMessage.value = "";
      } else {
        errorMessage.value = "Kota tidak ditemukan";
      }
    } catch (e) {
      errorMessage.value = "Gagal mengambil data";
    } finally {
      isLoading.value = false;
    }
  }
}
