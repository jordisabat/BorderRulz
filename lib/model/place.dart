import 'dart:convert';

class Place {
  String name;
  String address;
  int place;

  List<Rule> rules;

  Place({this.name, this.address, this.place});

  Place.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    place = json['place'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['ruleSet'] = this.place;
    return data;
  }
}

class Rule {
  int id;
  Place place;
  int placeId;
  String type;
  String description;
  int severity;

  Rule.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    placeId = json["place"];
    type = json['type'];
    description = json['description'];
    severity = json['severity'];
  }

  @override
  String toString() {
    return this.id.toString() +
        this.type +
        this.severity.toString() +
        this.description;
  }
}
