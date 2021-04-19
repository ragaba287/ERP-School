import 'package:erp_school/widget/custom_textformfield.dart';
import 'package:erp_school/workingOn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PayFee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6789CA),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                  ),
                )),
            title: Text(
              'Pay Online',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * .865,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 18, right: 18, bottom: 20),
            child: Column(
              children: [
                SizedBox(height: 30),
                CustomTextFormField(
                  text: 'Date',
                  hint: '01 Feb 2020',
                ),
                SizedBox(height: 30),
                CustomTextFormField(
                  text: 'Period',
                  hint: '28 Feb 2020',
                ),
                SizedBox(height: 30),
                CustomTextFormField(
                  text: 'Period',
                  hint: '\$999',
                ),
                Spacer(),
                CupertinoButton(
                  padding: EdgeInsets.all(18.0),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => WorkingOn()));
                  },
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
                        "PAY NOW",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
