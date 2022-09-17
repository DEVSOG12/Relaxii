import 'package:relax/src/Models/users.dart';

enum Authtype { email, google, apple, phone, github }

class AuthUser {
  UserP? user;
  Authtype? authtype;
  DateTime? lastlogin;
  DateTime? created;
  String? uid;

  AuthUser({this.user, this.authtype, this.lastlogin, this.created, this.uid});

  AuthUser.fromJson(Map<String, dynamic> json) {
    user = (json['user'] != null ? UserP.fromJson(json['user']) : null)!;
    authtype = json['authtype'] != null
        ? Authtype.values
            .firstWhere((e) => e.toString() == "Authtype.${json['authtype']}")
        : null;
    lastlogin = json['lastlogin'] != null
        ? DateTime.fromMillisecondsSinceEpoch(json['lastlogin'])
        : null;
    created = json['created'] != null
        ? DateTime.fromMillisecondsSinceEpoch(json['created'])
        : null;
    uid = json['uid'];
  }

  Map toJson(
      {UserP? user,
      Authtype? authtype,
      DateTime? lastlogin,
      DateTime? created,
      String? uid}) {
    final Map<String, dynamic> data = {};
    data['authtype'] = authtype.toString().split('.').last;
    data['user'] = user!.toJson();
    data['lastlogin'] = lastlogin!.millisecondsSinceEpoch;
    data['created'] = created!.millisecondsSinceEpoch;
    data['uid'] = uid;
    return data;
  }
}
