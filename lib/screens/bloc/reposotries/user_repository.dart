import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

class UserRepository {
  late FirebaseAuth _firebaseAuth;

  UserRepository() {
    _firebaseAuth = FirebaseAuth.instance;
  }

  //Method that register a new user with email and password
  Future<User?> createUser(String email, String password) async {
    try {
      var result = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } on PlatformException catch (e) {
      throw Exception(e.toString());
    }
  }

  //Method that login user with email and password
  Future<User?> loginUser(String email, String password) async {
    try {
      var result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } on PlatformException catch (e) {
      throw Exception(e.toString());
    }
  }

  //Method that sign out the user
  Future<void> logoutUser() async {
    try {
      _firebaseAuth.signOut();
    } on PlatformException catch (e) {
      throw Exception(e.toString());
    }
  }

  //Method is user signed in or not
  Future<bool> isSignedIn() async {
    var currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  //Method get current user
  Future<User> getCurrentUser()async{
      return _firebaseAuth.currentUser!;
  }
}
