import 'package:erp_school/widget/custom_text.dart';
import 'package:erp_school/widget/custom_textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/background.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 450),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/login.png"))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
                    "Hi Student",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 265, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
                    "Sign in to continue",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 360, left: 20, right: 20),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CustomTextFormField(
                      text: "Mobile Number/Email",
                      hint: "mhmdreda@gmail.com",
                      obscureText: false,
                      // onSaved: () {},
                      validator: (value) {
                        if (value == null) {
                          print("error");
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      text: "Password",
                      hint: "*******",
                      obscureText: true,
                      // onSaved: () {},
                      validator: (value) {
                        if (value == null) {
                          print("error");
                        }
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.all(18.0),
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color(0xFF6789CA).withOpacity(1),
                              Color(0xFF345FB4).withOpacity(1),
                            ])),
                        child: ListTile(
                          trailing: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomText(
                      text: "Forgot Password?",
                      textAlignment: Alignment.bottomRight,
                      color: Color(0xFF313131),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
