import 'package:erp_school/login.dart';
import 'package:flutter/material.dart';
import 'package:your_splash/your_splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen.timed(
      seconds: 5,
      route: MaterialPageRoute(builder: (_) => LoginScreen()),
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
