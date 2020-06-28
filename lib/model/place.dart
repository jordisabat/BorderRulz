import 'dart:convert';

class Place {
  String name;
  String code;
  String address;
  int ruleSet;
  //List<Rule> rules;

  Place({this.name, this.code, this.address, this.ruleSet});

  Place.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    address = json['address'];
    ruleSet = json['ruleSet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.code;
    data['address'] = this.address;
    data['ruleSet'] = this.ruleSet;
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
