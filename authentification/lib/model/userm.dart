import 'dart:convert';

class UserModel {
  final String uid;
  final String email;
  final String fullname;
  final String img;
  UserModel({
    required this.uid,
    required this.email,
    required this.fullname,
    required this.img,
  });

  UserModel copyWith({
    String? uid,
    String? email,
    String? fullname,
    String? img,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      fullname: fullname ?? this.fullname,
      img: img ?? this.img,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'fullname': fullname,
      'img': img,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      fullname: map['fullname'] ?? '',
      img: map['img'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(uid: $uid, email: $email, fullname: $fullname, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.uid == uid &&
        other.email == email &&
        other.fullname == fullname &&
        other.img == img;
  }

  @override
  int get hashCode {
    return uid.hashCode ^ email.hashCode ^ fullname.hashCode ^ img.hashCode;
  }
}
