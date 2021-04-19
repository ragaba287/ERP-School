import 'package:erp_school/biniding.dart';
import 'package:erp_school/home.dart';
import 'package:erp_school/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_splash/your_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    initialBinding: Binding(),
    debugShowCheckedModeBanner: false,
    home: SplashScreen.timed(
      seconds: 5,
      route: MaterialPageRoute(builder: (_) => Home()),
      body: Scaffold(
        body: InkWell(
            child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/vector.png"),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 250),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Logo.png"))),
                ),
              ),
            )
          ],
        )),
      ),
    ),
  ));
}
