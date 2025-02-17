import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/weather_controller.dart';

class SearchScreen extends StatelessWidget {
  final WeatherController weatherController = Get.find();
  final TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cari Kota')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: cityController,
              decoration: InputDecoration(
                labelText: 'Masukkan nama kota',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                weatherController.fetchWeather(cityController.text);
                Get.back();
              },
              child: Text('Cari Cuaca'),
            ),
          ],
        ),
      ),
    );
  }
}
