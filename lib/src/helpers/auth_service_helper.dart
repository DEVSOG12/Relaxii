import 'package:firebase_auth/firebase_auth.dart';
import 'package:relax/src/helpers/api.dart';

// Future<bool> EmailLoginResponse({UserCredential? userCredential}) {
//   UserCredential? userCredential;
//   String? message;

//   // EmailLoginResponse({this.userCredential, this.success, this.message});

// if(userCredential!.user != null){
//   success = true;
//   message = "Login Successful";
//   return success;
// }

class AuthenicationResponse extends Response {
  UserCredential? userCredential;
  bool? isverified;
  String? message;

  AuthenicationResponse({this.userCredential, this.message, this.isverified });
}
