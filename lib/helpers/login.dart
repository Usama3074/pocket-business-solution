import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:toast/toast.dart';

class LoginState with ChangeNotifier {
  bool _isLoginPage = true;
  String fullName;
  String email;
  String password;

  FirebaseUser user;
  var auth = FirebaseAuth.instance;
  var formKey = new GlobalKey<FormState>();

  FirebaseUser get currentUser => user;

  bool get isLoginPage => _isLoginPage;

  set isLoginPage(value) {
    _isLoginPage = value;
    notifyListeners();
  }

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  validateAndSubmit(context) {
    
    if (validateAndSave()) {
      if (isLoginPage) {
        signIn(context);
      } else {
        signUp(context);
      }
    }
  }

  signUp(context) async {
    try {
      auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((result) {
        if (result.user != null) {
          Firestore.instance
              .collection('users_details')
              .document(result.user.uid)
              .setData({
            "name": fullName,
            "email": email,
          });
        }
      }).catchError((err) {
        Toast.show(
          err.message,
          context,
          duration: Toast.LENGTH_LONG,
          gravity: Toast.TOP,
        );
      });
    } catch (e) {
      // handleError(e);
      return null;
    }
  }

  signIn(context) async {
    try {
      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((result) {})
          .catchError((err) {
        Toast.show(
          err.message,
          context,
          duration: Toast.LENGTH_LONG,
          gravity: Toast.TOP,
        );
      });
    } catch (e) {
      // handleError(e);
      return null;
    }
  }

  signout() {
    print('testing signout');
    auth.signOut();
    // notifyListeners();
  }
}