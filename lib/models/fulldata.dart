import 'package:app037airportsapi/models/OneRows.dart';

class FullData {
  String version;
  List<OneRows> rows;

  FullData.fromJson(Map<String, dynamic> json)
      : version = json["version"],
        rows = List<OneRows>.from(json["rows"].map((x) => OneRows.fromJson(x)));
}
