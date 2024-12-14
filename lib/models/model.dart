part 'user.dart';

class UserModel {
  String msg;
  int id;
  String nama;
  String token;

  UserModel({
    required this.msg,
    required this.id,
    required this.nama,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        msg: json["msg"],
        id: json["id"],
        nama: json["nama"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "id": id,
        "nama": nama,
        "token": token,
      };
}
