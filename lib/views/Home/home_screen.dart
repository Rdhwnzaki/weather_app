import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/weather_controller.dart';

class HomeScreen extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
      ),
      body: Center(
        child: Obx(() {
          if (weatherController.isLoading.value) {
            return CircularProgressIndicator();
          } else if (weatherController.errorMessage.value.isNotEmpty) {
            return Text(weatherController.errorMessage.value);
          } else if (weatherController.weather.value != null) {
            final weather = weatherController.weather.value!;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weather.location, // Nama lokasi
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${weather.temperature}°C', // Suhu dalam °C
                  style: TextStyle(fontSize: 32),
                ),
                Text(
                  "Waktu: ${weather.time}", // Waktu
                  style: TextStyle(fontSize: 16),
                ),
              ],
            );
          } else {
            return Text('Masukkan kota untuk melihat cuaca');
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/search'),
        child: Icon(Icons.search),
      ),
    );
  }
}
