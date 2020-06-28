class Place {
  String name;
  String code;
  String address;
  int ruleSet;

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
