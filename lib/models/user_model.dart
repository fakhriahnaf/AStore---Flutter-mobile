class UserModel {
  int id;
  String name;
  String email;
  String username;
  String phoneNumber;
  String profilePhotoUrl;
  String token;

  UserModel({
    this.id,
    this.email,
    this.username,
    this.phoneNumber,
    this.profilePhotoUrl,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    phoneNumber = json['phone_number'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': email,
      'username': username,
      'email': email,
      'profile_photo_url': profilePhotoUrl,
      'phone_number' : phoneNumber,
      'token': token,
    };
  }
}
