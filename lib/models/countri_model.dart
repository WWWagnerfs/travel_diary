import 'dart:ui';

class Countri {
  final int name;
  final int region;
  final int languages;
  final String maps;
  final String timezones;
  final Image flags;


  Countri({
    required this.name,
    required this.region,
    required this.languages,
    required this.maps,
    required this.timezones,
    required this.flags,

  });

  factory Countri.fromJson(Map<String, dynamic> json) {
    return Countri(
      name: json['name'],
      region: json['region'],
      languages: json['languages'],
      maps: json['maps'],
      timezones: json['timezones'],
      flags: json['flags'],

    );
  }
}

class CountriListResponse {
  final List<Countri> countri;

  CountriListResponse({required this.countri});

  factory CountriListResponse.fromJson(Map<String, dynamic> json) {
    var list = json['name']['countries'] as List;
    List<Countri> countriList = list.map((i) => Countri.fromJson(i)).toList();

    return CountriListResponse(countri: countriList);
  }
}


