class UserP {
  String? name;
  String? email;
  String? sechash;
  String? phonenumber;

  UserP({this.name, this.email, this.sechash, this.phonenumber});

  UserP.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    sechash = json['sechash'];
    phonenumber = json['phonenumber'];
  }

  Map toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['email'] = email;
    data['sechash'] = sechash;
    data['phonenumber'] = phonenumber;
    return data;
  }
}
