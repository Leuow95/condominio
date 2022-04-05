class MoradorModel {
  final int id;
  final String name;
  final int bloco;
  final int apt;

  MoradorModel({
    required this.id,
    required this.name,
    required this.bloco,
    required this.apt,
  });

  factory MoradorModel.fromJson(Map<String, dynamic> json) {
    return MoradorModel(
      id: json["id"],
      name: json["attributes"]["name"],
      bloco: json["attributes"]["bloco"],
      apt: json["attributes"]["apt"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "bloco": bloco,
        "apt": apt,
      };
}
