List<User> users = [
  User(
      name: "Joao",
      photo: "assets/images/foto.png",
      lastSeen: DateTime(2024, 6, 18, 3, 46),
      lastMessage: "eae gatinha",
      number: 88999999999),
  User(
      name: "Amanda",
      photo: "assets/images/foto.png",
      lastSeen: DateTime(2024, 3, 2, 12, 24),
      lastMessage: "quero rimar",
      number: 88999999999),
  User(
      name: "Daniel",
      photo: "assets/images/foto.png",
      lastSeen: DateTime(2024, 6, 24, 1, 10),
      lastMessage: "Me devolve meu dinheiro",
      number: 88999999999),
  User(
      name: "Manu",
      photo: "assets/images/foto.png",
      lastSeen: DateTime(2024, 1, 9, 8, 6),
      lastMessage: "Cade o Daniel",
      number: 88999999999)
];

class User {
  User({
    required this.name,
    required this.photo,
    required this.lastSeen,
    required this.lastMessage,
    required this.number,
  });

  String name;
  String photo;
  DateTime lastSeen;
  String lastMessage;
  int number;
}
