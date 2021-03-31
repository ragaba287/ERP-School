import 'dart:ffi';

import 'package:erp_school/pay_fee.dart';
import 'package:flutter/material.dart';

class Fees extends StatelessWidget {
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
              'Fees Due',
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffE1E3E8)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Receipt No.',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xff777777)),
                                ),
                                Text(
                                  '#98761',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xff3A3A3A)),
                                ),
                              ],
                            ),
                            Divider(
                              height: 30,
                              color: Color(0xffDBDBDB),
                              thickness: .8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Month',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xff777777)),
                                ),
                                Text(
                                  'October',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xff3A3A3A)),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Payment Date',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xff777777)),
                                ),
                                Text(
                                  '10 Oct 20',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xff3A3A3A)),
                                ),
                              ],
                            ),
                            Divider(
                              height: 30,
                              color: Color(0xffDBDBDB),
                              thickness: .8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Pending Amount',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xff777777)),
                                ),
                                Text(
                                  '\$999',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xff3A3A3A)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'PAY NOW',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PayFee()));
                        },
                        style: TextButton.styleFrom(
                            minimumSize: Size(double.infinity, 55),
                            backgroundColor: Color(0xff6789CA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
