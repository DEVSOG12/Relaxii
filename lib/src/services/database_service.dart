import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:relax/src/Models/authenication.dart';
import 'package:relax/src/Models/users.dart';

class DatabaseService {
  User user;
  DatabaseService({
    required this.user,
  });

  // collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future addUserData(AuthUser authUser) {
    return userCollection.doc(user.uid).set(authUser.toJson());
  }

  Future updateUserData(AuthUser authUser) {
    return userCollection
        .doc(user.uid)
        .update(authUser.toJson(user: UserP(name: "",)) as Map<String, dynamic>);
  }

  Future deleteUserData() {
    return userCollection.doc(user.uid).delete();
  }

  Future<AuthUser> getUserData() {
    return userCollection.doc(user.uid).get().then((value) {
      return AuthUser.fromJson(value.data()! as Map<String, dynamic>);
    });
  }
}
