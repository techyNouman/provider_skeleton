
// this class is getting used in saving user data in shared preferences
class UserModel {
  String? id;
  String? token;
  bool? userExists;

  UserModel({this.id, this.token, this.userExists});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    token = json['token'];
    userExists = json['user_exist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['token'] = token;
    data['user_exist'] = userExists;
    return data;
  }
}