import 'package:get/get.dart';
import 'package:weather_app/views/Home/home_screen.dart';
import 'package:weather_app/views/Search/search_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: "/", page: () => HomeScreen()),
    GetPage(name: "/search", page: () => SearchScreen()),
  ];
}
