import 'package:app037airportsapi/models/timezone.dart';

class OneRows {
  int id;
  String name;
  String iata;
  String icao;
  String city;
  double lat;
  double lon;
  String country;
  int alt;
  int size;
  TimeZone timezone;
  int countryId;

  OneRows.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        iata = json["iata"],
        icao = json["icao"],
        city = json["city"],
        lat = json["lat"],
        lon = json["lon"],
        country = json["country"],
        alt = json["alt"],
        size = json["size"],
        timezone = TimeZone.formJson(json["timezone"]),
        countryId = json["countryId"];

}