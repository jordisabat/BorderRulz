class Place {
  String name;
  String address;
  int ruleSet;

  Place({this.name, this.address, this.ruleSet});

  Place.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    ruleSet = json['ruleSet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['ruleSet'] = this.ruleSet;
    return data;
  }
}
