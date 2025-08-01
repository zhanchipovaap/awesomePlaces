import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'place_dto.g.dart';

@JsonSerializable()
class Place {
    @JsonKey(name: "id")
    int id;
    @JsonKey(name: "name")
    String name;
    @JsonKey(name: "lat")
    double lat;
    @JsonKey(name: "lng")
    double lng;
    @JsonKey(name: "description")
    String description;
    @JsonKey(name: "type")
    String type;
    @JsonKey(name: "urls")
    List<String> urls;

    Place({
        required this.id,
        required this.name,
        required this.lat,
        required this.lng,
        required this.description,
        required this.type,
        required this.urls,
    });

    Place copyWith({
        int? id,
        String? name,
        double? lat,
        double? lng,
        String? description,
        String? type,
        List<String>? urls,
    }) => 
        Place(
            id: id ?? this.id,
            name: name ?? this.name,
            lat: lat ?? this.lat,
            lng: lng ?? this.lng,
            description: description ?? this.description,
            type: type ?? this.type,
            urls: urls ?? this.urls,
        );

    factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

    Map<String, dynamic> toJson() => _$PlaceToJson(this);
}
