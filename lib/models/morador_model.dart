class MoradorModel {
  final String name;
  final int bloco;
  final int apt;

  MoradorModel({required this.name, required this.bloco, required this.apt});

  factory MoradorModel.fromJson(Map<String, dynamic> json) {
    return MoradorModel(
      name: json["name"],
      bloco: json["bloco"],
      apt: json["apt"],
    );
  }
}
