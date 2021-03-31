import 'package:erp_school/widget/custom_textformfield.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              'My Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 10.0, right: 20, bottom: 10),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_rounded,
                        color: Color(0xff6688CA),
                        size: 19,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Done',
                        style: TextStyle(
                          color: Color(0xff6688CA),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    onSurface: Colors.white,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              )
            ],
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
                  padding: EdgeInsets.all(15),
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff5278C1)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey,
                            child: Image.asset('assets/user_pic.png')),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Emmy Smith',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Class XI-B  |  Roll no: 04',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black26,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(Icons.camera_alt_outlined),
                          onPressed: () {})
                    ],
                  ),
                ),
                CustomTextFormField(),
                CustomTextFormField(),
                CustomTextFormField(),
                CustomTextFormField(),
                CustomTextFormField(),
                CustomTextFormField(),
                CustomTextFormField(),
                CustomTextFormField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
