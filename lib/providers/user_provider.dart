import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../services/auth_service.dart';
import '../services/user_service.dart';

class UserProvider extends ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  Future signUp(
      {required String email,
      required String password,
      required String name,
      required String username,
      required String role}) async {
    try {
      bool isUsernameUsed = !(await UserService()
          .usernameCheck(username: username, isEdit: false));
      if (isUsernameUsed) {
        throw Exception("Username not available");
      } else {
        _user = await AuthService().signup(
            email: email,
            name: name,
            password: password,
            username: username,
            role: role);
      }
    } on FirebaseAuthException {
      rethrow;
    }
  }

  Future signIn({required String email, required String password}) async {
    try {
      _user = await AuthService().signIn(email: email, password: password);
    } on FirebaseAuthException {
      rethrow;
    }
  }

  Future signOut() async {
    try {
      await AuthService().signOut();
    } on FirebaseAuthException {
      rethrow;
    }
  }

  Future<bool> getUserById({required String id}) async {
    try {
      _user = await UserService().getUserbyId(id);
      notifyListeners();
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
