
class Rule {
  int id;
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