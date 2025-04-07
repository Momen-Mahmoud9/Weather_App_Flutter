class UserData {
 bool status;

  UserData({required this.status});

  factory UserData.fetchUser(Map<String, dynamic> json) {
    return UserData(status: json["status"]);
  }
}
