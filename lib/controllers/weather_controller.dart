import 'package:get/get.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherController extends GetxController {
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  var weather = Rxn<Weather>();

  void fetchWeather(String city) async {
    try {
      isLoading(true);
      errorMessage('');
      final fetchedWeather = await WeatherService().getWeather(city);
      weather.value = fetchedWeather;
    } catch (e) {
      errorMessage("Gagal mengambil data cuaca.");
    } finally {
      isLoading(false);
    }
  }
}
