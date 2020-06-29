class Place {
  String name;
  String code;
  String address;
  int place;
  List<Rules> rules;

  Place({this.name, this.code, this.address, this.place, this.rules});

  Place.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    address = json['address'];
    place = json['place'];
    if (json['rules'] != null) {
      rules = new List<Rules>();
      json['rules'].forEach((v) {
        rules.add(new Rules.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.code;
    data['address'] = this.address;
    data['place'] = this.place;
    if (this.rules != null) {
      data['rules'] = this.rules.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Rules {
  String type;
  int status;

  Rules({this.type, this.status});

  Rules.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['status'] = this.status;
    return data;
  }
}
