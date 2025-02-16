import 'dart:convert';

WeatherModel weatherModelFromJson(String str) =>
    WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

class WeatherModel {
  Timelines timelines;
  Location location;

  WeatherModel({
    required this.timelines,
    required this.location,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        timelines: Timelines.fromJson(json["timelines"]),
        location: Location.fromJson(json["location"]),
      );

  Map<String, dynamic> toJson() => {
        "timelines": timelines.toJson(),
        "location": location.toJson(),
      };
}

class Location {
  double lat;
  double lon;
  String name;
  String type;

  Location({
    required this.lat,
    required this.lon,
    required this.name,
    required this.type,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        name: json["name"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lon": lon,
        "name": name,
        "type": type,
      };
}

class Timelines {
  List<Daily> daily;

  Timelines({
    required this.daily,
  });

  factory Timelines.fromJson(Map<String, dynamic> json) => Timelines(
        daily: List<Daily>.from(json["daily"].map((x) => Daily.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "daily": List<dynamic>.from(daily.map((x) => x.toJson())),
      };
}

class Daily {
  DateTime time;
  Values values;

  Daily({
    required this.time,
    required this.values,
  });

  factory Daily.fromJson(Map<String, dynamic> json) => Daily(
        time: DateTime.parse(json["time"]),
        values: Values.fromJson(json["values"]),
      );

  Map<String, dynamic> toJson() => {
        "time": time.toIso8601String(),
        "values": values.toJson(),
      };
}

class Values {
  double cloudBaseAvg;
  double cloudBaseMax;
  double cloudBaseMin;
  double cloudCeilingAvg;
  double cloudCeilingMax;
  double cloudCeilingMin;
  int cloudCoverAvg;
  int cloudCoverMax;
  int cloudCoverMin;
  double dewPointAvg;
  double dewPointMax;
  double dewPointMin;
  double evapotranspirationAvg;
  double evapotranspirationMax;
  double evapotranspirationMin;
  double evapotranspirationSum;
  int freezingRainIntensityAvg;
  int freezingRainIntensityMax;
  int freezingRainIntensityMin;
  double hailProbabilityAvg;
  double hailProbabilityMax;
  double hailProbabilityMin;
  double hailSizeAvg;
  double hailSizeMax;
  double hailSizeMin;
  int humidityAvg;
  int humidityMax;
  int humidityMin;
  int iceAccumulationAvg;
  int iceAccumulationLweAvg;
  int iceAccumulationLweMax;
  int iceAccumulationLweMin;
  int iceAccumulationLweSum;
  int iceAccumulationMax;
  int iceAccumulationMin;
  int iceAccumulationSum;
  DateTime moonriseTime;
  DateTime moonsetTime;
  double precipitationProbabilityAvg;
  int precipitationProbabilityMax;
  int precipitationProbabilityMin;
  int pressureSeaLevelAvg;
  int pressureSeaLevelMax;
  int pressureSeaLevelMin;
  int pressureSurfaceLevelAvg;
  int pressureSurfaceLevelMax;
  int pressureSurfaceLevelMin;
  double rainAccumulationAvg;
  double rainAccumulationLweAvg;
  double rainAccumulationLweMax;
  int rainAccumulationLweMin;
  double rainAccumulationMax;
  int rainAccumulationMin;
  double rainAccumulationSum;
  double rainIntensityAvg;
  double rainIntensityMax;
  int rainIntensityMin;
  int sleetAccumulationAvg;
  int sleetAccumulationLweAvg;
  int sleetAccumulationLweMax;
  int sleetAccumulationLweMin;
  int sleetAccumulationLweSum;
  int sleetAccumulationMax;
  int sleetAccumulationMin;
  int sleetIntensityAvg;
  int sleetIntensityMax;
  int sleetIntensityMin;
  int snowAccumulationAvg;
  int snowAccumulationLweAvg;
  int snowAccumulationLweMax;
  int snowAccumulationLweMin;
  int snowAccumulationLweSum;
  int snowAccumulationMax;
  int snowAccumulationMin;
  int snowAccumulationSum;
  int snowIntensityAvg;
  int snowIntensityMax;
  int snowIntensityMin;
  DateTime sunriseTime;
  DateTime sunsetTime;
  double temperatureApparentAvg;
  double temperatureApparentMax;
  double temperatureApparentMin;
  double temperatureAvg;
  double temperatureMax;
  double temperatureMin;
  int uvHealthConcernAvg;
  int uvHealthConcernMax;
  int uvHealthConcernMin;
  int uvIndexAvg;
  int uvIndexMax;
  int uvIndexMin;
  double visibilityAvg;
  int visibilityMax;
  double visibilityMin;
  int weatherCodeMax;
  int weatherCodeMin;
  int windDirectionAvg;
  double windGustAvg;
  double windGustMax;
  double windGustMin;
  double windSpeedAvg;
  double windSpeedMax;
  double windSpeedMin;

  Values({
    required this.cloudBaseAvg,
    required this.cloudBaseMax,
    required this.cloudBaseMin,
    required this.cloudCeilingAvg,
    required this.cloudCeilingMax,
    required this.cloudCeilingMin,
    required this.cloudCoverAvg,
    required this.cloudCoverMax,
    required this.cloudCoverMin,
    required this.dewPointAvg,
    required this.dewPointMax,
    required this.dewPointMin,
    required this.evapotranspirationAvg,
    required this.evapotranspirationMax,
    required this.evapotranspirationMin,
    required this.evapotranspirationSum,
    required this.freezingRainIntensityAvg,
    required this.freezingRainIntensityMax,
    required this.freezingRainIntensityMin,
    required this.hailProbabilityAvg,
    required this.hailProbabilityMax,
    required this.hailProbabilityMin,
    required this.hailSizeAvg,
    required this.hailSizeMax,
    required this.hailSizeMin,
    required this.humidityAvg,
    required this.humidityMax,
    required this.humidityMin,
    required this.iceAccumulationAvg,
    required this.iceAccumulationLweAvg,
    required this.iceAccumulationLweMax,
    required this.iceAccumulationLweMin,
    required this.iceAccumulationLweSum,
    required this.iceAccumulationMax,
    required this.iceAccumulationMin,
    required this.iceAccumulationSum,
    required this.moonriseTime,
    required this.moonsetTime,
    required this.precipitationProbabilityAvg,
    required this.precipitationProbabilityMax,
    required this.precipitationProbabilityMin,
    required this.pressureSeaLevelAvg,
    required this.pressureSeaLevelMax,
    required this.pressureSeaLevelMin,
    required this.pressureSurfaceLevelAvg,
    required this.pressureSurfaceLevelMax,
    required this.pressureSurfaceLevelMin,
    required this.rainAccumulationAvg,
    required this.rainAccumulationLweAvg,
    required this.rainAccumulationLweMax,
    required this.rainAccumulationLweMin,
    required this.rainAccumulationMax,
    required this.rainAccumulationMin,
    required this.rainAccumulationSum,
    required this.rainIntensityAvg,
    required this.rainIntensityMax,
    required this.rainIntensityMin,
    required this.sleetAccumulationAvg,
    required this.sleetAccumulationLweAvg,
    required this.sleetAccumulationLweMax,
    required this.sleetAccumulationLweMin,
    required this.sleetAccumulationLweSum,
    required this.sleetAccumulationMax,
    required this.sleetAccumulationMin,
    required this.sleetIntensityAvg,
    required this.sleetIntensityMax,
    required this.sleetIntensityMin,
    required this.snowAccumulationAvg,
    required this.snowAccumulationLweAvg,
    required this.snowAccumulationLweMax,
    required this.snowAccumulationLweMin,
    required this.snowAccumulationLweSum,
    required this.snowAccumulationMax,
    required this.snowAccumulationMin,
    required this.snowAccumulationSum,
    required this.snowIntensityAvg,
    required this.snowIntensityMax,
    required this.snowIntensityMin,
    required this.sunriseTime,
    required this.sunsetTime,
    required this.temperatureApparentAvg,
    required this.temperatureApparentMax,
    required this.temperatureApparentMin,
    required this.temperatureAvg,
    required this.temperatureMax,
    required this.temperatureMin,
    required this.uvHealthConcernAvg,
    required this.uvHealthConcernMax,
    required this.uvHealthConcernMin,
    required this.uvIndexAvg,
    required this.uvIndexMax,
    required this.uvIndexMin,
    required this.visibilityAvg,
    required this.visibilityMax,
    required this.visibilityMin,
    required this.weatherCodeMax,
    required this.weatherCodeMin,
    required this.windDirectionAvg,
    required this.windGustAvg,
    required this.windGustMax,
    required this.windGustMin,
    required this.windSpeedAvg,
    required this.windSpeedMax,
    required this.windSpeedMin,
  });

  factory Values.fromJson(Map<String, dynamic> json) => Values(
        cloudBaseAvg: json["cloudBaseAvg"]?.toDouble(),
        cloudBaseMax: json["cloudBaseMax"]?.toDouble(),
        cloudBaseMin: json["cloudBaseMin"]?.toDouble(),
        cloudCeilingAvg: json["cloudCeilingAvg"]?.toDouble(),
        cloudCeilingMax: json["cloudCeilingMax"]?.toDouble(),
        cloudCeilingMin: json["cloudCeilingMin"]?.toDouble(),
        cloudCoverAvg: json["cloudCoverAvg"],
        cloudCoverMax: json["cloudCoverMax"],
        cloudCoverMin: json["cloudCoverMin"],
        dewPointAvg: json["dewPointAvg"]?.toDouble(),
        dewPointMax: json["dewPointMax"]?.toDouble(),
        dewPointMin: json["dewPointMin"]?.toDouble(),
        evapotranspirationAvg: json["evapotranspirationAvg"]?.toDouble(),
        evapotranspirationMax: json["evapotranspirationMax"]?.toDouble(),
        evapotranspirationMin: json["evapotranspirationMin"]?.toDouble(),
        evapotranspirationSum: json["evapotranspirationSum"]?.toDouble(),
        freezingRainIntensityAvg: json["freezingRainIntensityAvg"],
        freezingRainIntensityMax: json["freezingRainIntensityMax"],
        freezingRainIntensityMin: json["freezingRainIntensityMin"],
        hailProbabilityAvg: json["hailProbabilityAvg"]?.toDouble(),
        hailProbabilityMax: json["hailProbabilityMax"]?.toDouble(),
        hailProbabilityMin: json["hailProbabilityMin"]?.toDouble(),
        hailSizeAvg: json["hailSizeAvg"]?.toDouble(),
        hailSizeMax: json["hailSizeMax"]?.toDouble(),
        hailSizeMin: json["hailSizeMin"]?.toDouble(),
        humidityAvg: json["humidityAvg"],
        humidityMax: json["humidityMax"],
        humidityMin: json["humidityMin"],
        iceAccumulationAvg: json["iceAccumulationAvg"],
        iceAccumulationLweAvg: json["iceAccumulationLweAvg"],
        iceAccumulationLweMax: json["iceAccumulationLweMax"],
        iceAccumulationLweMin: json["iceAccumulationLweMin"],
        iceAccumulationLweSum: json["iceAccumulationLweSum"],
        iceAccumulationMax: json["iceAccumulationMax"],
        iceAccumulationMin: json["iceAccumulationMin"],
        iceAccumulationSum: json["iceAccumulationSum"],
        moonriseTime: DateTime.parse(json["moonriseTime"]),
        moonsetTime: DateTime.parse(json["moonsetTime"]),
        precipitationProbabilityAvg:
            json["precipitationProbabilityAvg"]?.toDouble(),
        precipitationProbabilityMax: json["precipitationProbabilityMax"],
        precipitationProbabilityMin: json["precipitationProbabilityMin"],
        pressureSeaLevelAvg: json["pressureSeaLevelAvg"],
        pressureSeaLevelMax: json["pressureSeaLevelMax"],
        pressureSeaLevelMin: json["pressureSeaLevelMin"],
        pressureSurfaceLevelAvg: json["pressureSurfaceLevelAvg"],
        pressureSurfaceLevelMax: json["pressureSurfaceLevelMax"],
        pressureSurfaceLevelMin: json["pressureSurfaceLevelMin"],
        rainAccumulationAvg: json["rainAccumulationAvg"]?.toDouble(),
        rainAccumulationLweAvg: json["rainAccumulationLweAvg"]?.toDouble(),
        rainAccumulationLweMax: json["rainAccumulationLweMax"]?.toDouble(),
        rainAccumulationLweMin: json["rainAccumulationLweMin"],
        rainAccumulationMax: json["rainAccumulationMax"]?.toDouble(),
        rainAccumulationMin: json["rainAccumulationMin"],
        rainAccumulationSum: json["rainAccumulationSum"]?.toDouble(),
        rainIntensityAvg: json["rainIntensityAvg"]?.toDouble(),
        rainIntensityMax: json["rainIntensityMax"]?.toDouble(),
        rainIntensityMin: json["rainIntensityMin"],
        sleetAccumulationAvg: json["sleetAccumulationAvg"],
        sleetAccumulationLweAvg: json["sleetAccumulationLweAvg"],
        sleetAccumulationLweMax: json["sleetAccumulationLweMax"],
        sleetAccumulationLweMin: json["sleetAccumulationLweMin"],
        sleetAccumulationLweSum: json["sleetAccumulationLweSum"],
        sleetAccumulationMax: json["sleetAccumulationMax"],
        sleetAccumulationMin: json["sleetAccumulationMin"],
        sleetIntensityAvg: json["sleetIntensityAvg"],
        sleetIntensityMax: json["sleetIntensityMax"],
        sleetIntensityMin: json["sleetIntensityMin"],
        snowAccumulationAvg: json["snowAccumulationAvg"],
        snowAccumulationLweAvg: json["snowAccumulationLweAvg"],
        snowAccumulationLweMax: json["snowAccumulationLweMax"],
        snowAccumulationLweMin: json["snowAccumulationLweMin"],
        snowAccumulationLweSum: json["snowAccumulationLweSum"],
        snowAccumulationMax: json["snowAccumulationMax"],
        snowAccumulationMin: json["snowAccumulationMin"],
        snowAccumulationSum: json["snowAccumulationSum"],
        snowIntensityAvg: json["snowIntensityAvg"],
        snowIntensityMax: json["snowIntensityMax"],
        snowIntensityMin: json["snowIntensityMin"],
        sunriseTime: DateTime.parse(json["sunriseTime"]),
        sunsetTime: DateTime.parse(json["sunsetTime"]),
        temperatureApparentAvg: json["temperatureApparentAvg"]?.toDouble(),
        temperatureApparentMax: json["temperatureApparentMax"]?.toDouble(),
        temperatureApparentMin: json["temperatureApparentMin"]?.toDouble(),
        temperatureAvg: json["temperatureAvg"]?.toDouble(),
        temperatureMax: json["temperatureMax"]?.toDouble(),
        temperatureMin: json["temperatureMin"]?.toDouble(),
        uvHealthConcernAvg: json["uvHealthConcernAvg"],
        uvHealthConcernMax: json["uvHealthConcernMax"],
        uvHealthConcernMin: json["uvHealthConcernMin"],
        uvIndexAvg: json["uvIndexAvg"],
        uvIndexMax: json["uvIndexMax"],
        uvIndexMin: json["uvIndexMin"],
        visibilityAvg: json["visibilityAvg"]?.toDouble(),
        visibilityMax: json["visibilityMax"],
        visibilityMin: json["visibilityMin"]?.toDouble(),
        weatherCodeMax: json["weatherCodeMax"],
        weatherCodeMin: json["weatherCodeMin"],
        windDirectionAvg: json["windDirectionAvg"],
        windGustAvg: json["windGustAvg"]?.toDouble(),
        windGustMax: json["windGustMax"]?.toDouble(),
        windGustMin: json["windGustMin"]?.toDouble(),
        windSpeedAvg: json["windSpeedAvg"]?.toDouble(),
        windSpeedMax: json["windSpeedMax"]?.toDouble(),
        windSpeedMin: json["windSpeedMin"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "cloudBaseAvg": cloudBaseAvg,
        "cloudBaseMax": cloudBaseMax,
        "cloudBaseMin": cloudBaseMin,
        "cloudCeilingAvg": cloudCeilingAvg,
        "cloudCeilingMax": cloudCeilingMax,
        "cloudCeilingMin": cloudCeilingMin,
        "cloudCoverAvg": cloudCoverAvg,
        "cloudCoverMax": cloudCoverMax,
        "cloudCoverMin": cloudCoverMin,
        "dewPointAvg": dewPointAvg,
        "dewPointMax": dewPointMax,
        "dewPointMin": dewPointMin,
        "evapotranspirationAvg": evapotranspirationAvg,
        "evapotranspirationMax": evapotranspirationMax,
        "evapotranspirationMin": evapotranspirationMin,
        "evapotranspirationSum": evapotranspirationSum,
        "freezingRainIntensityAvg": freezingRainIntensityAvg,
        "freezingRainIntensityMax": freezingRainIntensityMax,
        "freezingRainIntensityMin": freezingRainIntensityMin,
        "hailProbabilityAvg": hailProbabilityAvg,
        "hailProbabilityMax": hailProbabilityMax,
        "hailProbabilityMin": hailProbabilityMin,
        "hailSizeAvg": hailSizeAvg,
        "hailSizeMax": hailSizeMax,
        "hailSizeMin": hailSizeMin,
        "humidityAvg": humidityAvg,
        "humidityMax": humidityMax,
        "humidityMin": humidityMin,
        "iceAccumulationAvg": iceAccumulationAvg,
        "iceAccumulationLweAvg": iceAccumulationLweAvg,
        "iceAccumulationLweMax": iceAccumulationLweMax,
        "iceAccumulationLweMin": iceAccumulationLweMin,
        "iceAccumulationLweSum": iceAccumulationLweSum,
        "iceAccumulationMax": iceAccumulationMax,
        "iceAccumulationMin": iceAccumulationMin,
        "iceAccumulationSum": iceAccumulationSum,
        "moonriseTime": moonriseTime.toIso8601String(),
        "moonsetTime": moonsetTime.toIso8601String(),
        "precipitationProbabilityAvg": precipitationProbabilityAvg,
        "precipitationProbabilityMax": precipitationProbabilityMax,
        "precipitationProbabilityMin": precipitationProbabilityMin,
        "pressureSeaLevelAvg": pressureSeaLevelAvg,
        "pressureSeaLevelMax": pressureSeaLevelMax,
        "pressureSeaLevelMin": pressureSeaLevelMin,
        "pressureSurfaceLevelAvg": pressureSurfaceLevelAvg,
        "pressureSurfaceLevelMax": pressureSurfaceLevelMax,
        "pressureSurfaceLevelMin": pressureSurfaceLevelMin,
        "rainAccumulationAvg": rainAccumulationAvg,
        "rainAccumulationLweAvg": rainAccumulationLweAvg,
        "rainAccumulationLweMax": rainAccumulationLweMax,
        "rainAccumulationLweMin": rainAccumulationLweMin,
        "rainAccumulationMax": rainAccumulationMax,
        "rainAccumulationMin": rainAccumulationMin,
        "rainAccumulationSum": rainAccumulationSum,
        "rainIntensityAvg": rainIntensityAvg,
        "rainIntensityMax": rainIntensityMax,
        "rainIntensityMin": rainIntensityMin,
        "sleetAccumulationAvg": sleetAccumulationAvg,
        "sleetAccumulationLweAvg": sleetAccumulationLweAvg,
        "sleetAccumulationLweMax": sleetAccumulationLweMax,
        "sleetAccumulationLweMin": sleetAccumulationLweMin,
        "sleetAccumulationLweSum": sleetAccumulationLweSum,
        "sleetAccumulationMax": sleetAccumulationMax,
        "sleetAccumulationMin": sleetAccumulationMin,
        "sleetIntensityAvg": sleetIntensityAvg,
        "sleetIntensityMax": sleetIntensityMax,
        "sleetIntensityMin": sleetIntensityMin,
        "snowAccumulationAvg": snowAccumulationAvg,
        "snowAccumulationLweAvg": snowAccumulationLweAvg,
        "snowAccumulationLweMax": snowAccumulationLweMax,
        "snowAccumulationLweMin": snowAccumulationLweMin,
        "snowAccumulationLweSum": snowAccumulationLweSum,
        "snowAccumulationMax": snowAccumulationMax,
        "snowAccumulationMin": snowAccumulationMin,
        "snowAccumulationSum": snowAccumulationSum,
        "snowIntensityAvg": snowIntensityAvg,
        "snowIntensityMax": snowIntensityMax,
        "snowIntensityMin": snowIntensityMin,
        "sunriseTime": sunriseTime.toIso8601String(),
        "sunsetTime": sunsetTime.toIso8601String(),
        "temperatureApparentAvg": temperatureApparentAvg,
        "temperatureApparentMax": temperatureApparentMax,
        "temperatureApparentMin": temperatureApparentMin,
        "temperatureAvg": temperatureAvg,
        "temperatureMax": temperatureMax,
        "temperatureMin": temperatureMin,
        "uvHealthConcernAvg": uvHealthConcernAvg,
        "uvHealthConcernMax": uvHealthConcernMax,
        "uvHealthConcernMin": uvHealthConcernMin,
        "uvIndexAvg": uvIndexAvg,
        "uvIndexMax": uvIndexMax,
        "uvIndexMin": uvIndexMin,
        "visibilityAvg": visibilityAvg,
        "visibilityMax": visibilityMax,
        "visibilityMin": visibilityMin,
        "weatherCodeMax": weatherCodeMax,
        "weatherCodeMin": weatherCodeMin,
        "windDirectionAvg": windDirectionAvg,
        "windGustAvg": windGustAvg,
        "windGustMax": windGustMax,
        "windGustMin": windGustMin,
        "windSpeedAvg": windSpeedAvg,
        "windSpeedMax": windSpeedMax,
        "windSpeedMin": windSpeedMin,
      };
}
