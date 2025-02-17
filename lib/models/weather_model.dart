class Weather {
  final String time;
  final double temperature;
  final String location;

  Weather({
    required this.time,
    required this.temperature,
    required this.location,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      time: json['data']['time'],
      temperature: json['data']['values']['temperature'].toDouble(),
      location: json['location']['name'],
    );
  }
}
