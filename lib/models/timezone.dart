class TimeZone {
  String name;
  int offset;
  String offsetHours;
  String abbr;
  String abbrName;
  bool isDst;

  TimeZone.formJson(Map<String, dynamic> json)
      : name = json["name"],
        offset = json["offset"],
        offsetHours = json["offsetHours"],
        abbr = json["abbr"],
        abbrName = json["abbrName"],
        isDst = json["isDst"];

  Map<String, dynamic> toJson() => {
    "name" : name,
    "offset" : offset,
    "offsetHours" : offsetHours,
    "abbr" : abbr,
    "abbrName" : abbrName,
    "isDst" : isDst,
  };
}
