class UserModel {
  bool ?status;
  UserData ?data;

  UserModel({
    this.status,
    this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      status: json['status'],
      data: UserData.fromJson(json['data']),
    );
  }
}

class UserData {
  int ?id;
  String? name;
  String ?mobile;
  String ?email;
  DateTime ?emailVerifiedAt;
  String ?otp;
  String ?avatar;
  DateTime ?createdAt;
  DateTime ?updatedAt;

  UserData({
    this.id,
    this.name,
    this.mobile,
    this.email,
    this.emailVerifiedAt,
    this.otp,
    this.avatar,
    this.createdAt,
    this.updatedAt,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'],
      name: json['name'],
      mobile: json['mobile'],
      email: json['email'],
      emailVerifiedAt: json['email_verified_at'] != null
          ? DateTime.parse(json['email_verified_at'])
          : null,
      otp: json['otp'],
      avatar: json['avatar'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
