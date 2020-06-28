import 'dart:convert';

class Place {
  String name;
  String code;
  String address;
  int place;
  //List<Rule> rules;

  Place({this.name, this.code, this.address, this.place});

  Place.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    address = json['address'];
    place = json['place'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.code;
    data['address'] = this.address;
    data['place'] = this.place;
    return data;
  }

  @override
  String toString() {
    return this.place.toString() + this.name + this.code;
  }
}
