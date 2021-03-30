import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6285C8),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 1.42,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Hi ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              Text(
                                'John',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Class XI-B | Roll no: 04',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              '2020-2021',
                              style: TextStyle(
                                color: Color(0xff6285C8),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 43,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color(0xffCACACA),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopCategory(
                        catColor: Color(0xffFCF3E2),
                        catText: '88.8%',
                      ),
                      TopCategory(
                        catColor: Color(0xffFFD8FF),
                        catText: '\$6400',
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  GridView.count(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 30,
                    children: [
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_quiz.png',
                        actionLable: 'Play Quiz',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_assignment.png',
                        actionLable: 'Assignment',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_holiday.png',
                        actionLable: 'School Holiday',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_calendra.png',
                        actionLable: 'Time Table',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_results.png',
                        actionLable: 'Result',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_date_sheet.png',
                        actionLable: 'Date Sheet',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_doubts.png',
                        actionLable: 'Ask Doubts',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_gallery.png',
                        actionLable: 'School Gallery',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_leave.png',
                        actionLable: 'Leave Application',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_password.png',
                        actionLable: 'Change Password',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_event.png',
                        actionLable: 'Events',
                      ),
                      ActionCat(
                        actionIcon: 'assets/catIcons/ic_logout.png',
                        actionLable: 'Logout',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionCat extends StatelessWidget {
  ActionCat({
    this.actionIcon = 'assets/Logo.png',
    this.actionLable = 'Play Quiz',
    this.onPress,
  });
  final String actionIcon;
  final String actionLable;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Color(0xffF5F6FC),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              actionIcon,
              scale: .65,
            ),
            Text(
              actionLable,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopCategory extends StatelessWidget {
  TopCategory({
    this.catColor = Colors.amberAccent,
    this.catText = '00.0%',
    this.catHint = 'Attendance',
    this.catIcon = 'assets/catIcons/ic_user.png',
  });
  final Color catColor;
  final String catText;
  final String catHint;
  final String catIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      width: (MediaQuery.of(context).size.width / 2) - 45,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xff5278C1),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: catColor.withOpacity(.15),
                borderRadius: BorderRadius.circular(50)),
            child: Image.asset(catIcon),
          ),
          Text(
            catText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            catHint,
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
