import 'package:equatable/equatable.dart';

class City extends Equatable{
  City({
      String? city, 
      String? lat, 
      String? lng, 
      String? country, 
      String? iso2, 
      String? adminName, 
      String? capital, 
      String? population, 
      String? populationProper,}){
    _city = city;
    _lat = lat;
    _lng = lng;
    _country = country;
    _iso2 = iso2;
    _adminName = adminName;
    _capital = capital;
    _population = population;
    _populationProper = populationProper;
}

  City.fromJson(dynamic json) {
    _city = json['city'];
    _lat = json['lat'];
    _lng = json['lng'];
    _country = json['country'];
    _iso2 = json['iso2'];
    _adminName = json['admin_name'];
    _capital = json['capital'];
    _population = json['population'];
    _populationProper = json['population_proper'];
  }
  String? _city;
  String? _lat;
  String? _lng;
  String? _country;
  String? _iso2;
  String? _adminName;
  String? _capital;
  String? _population;
  String? _populationProper;
City copyWith({  String? city,
  String? lat,
  String? lng,
  String? country,
  String? iso2,
  String? adminName,
  String? capital,
  String? population,
  String? populationProper,
}) => City(  city: city ?? _city,
  lat: lat ?? _lat,
  lng: lng ?? _lng,
  country: country ?? _country,
  iso2: iso2 ?? _iso2,
  adminName: adminName ?? _adminName,
  capital: capital ?? _capital,
  population: population ?? _population,
  populationProper: populationProper ?? _populationProper,
);
  String? get city => _city;
  String? get lat => _lat;
  String? get lng => _lng;
  String? get country => _country;
  String? get iso2 => _iso2;
  String? get adminName => _adminName;
  String? get capital => _capital;
  String? get population => _population;
  String? get populationProper => _populationProper;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['city'] = _city;
    map['lat'] = _lat;
    map['lng'] = _lng;
    map['country'] = _country;
    map['iso2'] = _iso2;
    map['admin_name'] = _adminName;
    map['capital'] = _capital;
    map['population'] = _population;
    map['population_proper'] = _populationProper;
    return map;
  }

  @override
  List<Object?> get props => [city];

}