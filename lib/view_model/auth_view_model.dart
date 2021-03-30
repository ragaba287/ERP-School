import 'package:erp_school/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthViewModel extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  String email, password, name;
  void signInWithEmailAndPassword() async {
    try {
      await _auth
          .signInWithEmailAndPassword(
              email: email.trim(), password: password.trim())
          .then((value) async {});
      Get.offAll(Home());
      print(email);
    } catch (e) {
      print(e);
      Get.snackbar("Error login account", e.message,
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
    }
  }
}
