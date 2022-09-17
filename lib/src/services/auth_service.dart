import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../helpers/auth_service_helper.dart';

class AuthenicationService {
  Future<AuthenicationResponse> emailSignUp(
      String email, String password) async {
    UserCredential authResult;
    try {
      authResult = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      return AuthenicationResponse(message: e.message, userCredential: null);
    }
    authResult.user!.sendEmailVerification();
    return AuthenicationResponse(
        isverified: false,
        message: "Email Verification Sent",
        userCredential: authResult);
  }

  Future<AuthenicationResponse> emailLogin(
      String email, String password) async {
    UserCredential authResult;
    try {
      authResult = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      return AuthenicationResponse(message: e.message, userCredential: null);
    }
    if (FirebaseAuth.instance.currentUser!.emailVerified) {
      return AuthenicationResponse(
          isverified: true,
          userCredential: authResult,
          message: "Login Successful");
    } else {
      return AuthenicationResponse(
          isverified: false,
          userCredential: authResult,
          message: "Please verify your email");
    }
  }

  Future<AuthenicationResponse> googleLogin(
      String email, String password) async {
    UserCredential authResult;
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential

    try {
      authResult = await FirebaseAuth.instance.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      return AuthenicationResponse(message: e.message, userCredential: null);
    }
    return AuthenicationResponse(
        isverified: true,
        userCredential: authResult,
        message: "Login Successful");
  }
}
