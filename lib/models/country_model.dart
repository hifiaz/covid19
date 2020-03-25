// To parse this JSON data, do
//
//     final countryModel = countryModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CountryModel countryModelFromJson(String str) => CountryModel.fromMap(json.decode(str));

String countryModelToJson(CountryModel data) => json.encode(data.toMap());

class CountryModel {
    List<Country> countries;

    CountryModel({
        @required this.countries,
    });

    factory CountryModel.fromMap(Map<String, dynamic> json) => CountryModel(
        countries: json["countries"] == null ? null : List<Country>.from(json["countries"].map((x) => Country.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "countries": countries == null ? null : List<dynamic>.from(countries.map((x) => x.toMap())),
    };
}

class Country {
    String name;
    String iso2;
    String iso3;

    Country({
        @required this.name,
        @required this.iso2,
        @required this.iso3,
    });

    factory Country.fromMap(Map<String, dynamic> json) => Country(
        name: json["name"] == null ? null : json["name"],
        iso2: json["iso2"] == null ? null : json["iso2"],
        iso3: json["iso3"] == null ? null : json["iso3"],
    );

    Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "iso2": iso2 == null ? null : iso2,
        "iso3": iso3 == null ? null : iso3,
    };
}
