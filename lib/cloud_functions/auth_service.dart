import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/cloud_functions/database.dart';
import 'package:flutter_application_1/models/local_user.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  LocalUser _userFromFirebase(User user) {
    return user != null ? LocalUser(uid: user.uid) : null;
  }

  Stream<LocalUser> get user {
    return _auth.authStateChanges().map(_userFromFirebase);
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      return null;
    }
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFirebase(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result =
          await _auth.createUserWithEmailAndPassword(email: email, password: password).then((result) async {
        await DatabaseService.instance.createUser(user: LocalUser(uid: result.user.uid));
        return null;
      });
      User user = result?.user;

      return _userFromFirebase(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return null;
    }
  }
}
