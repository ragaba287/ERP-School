import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
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
              'Assignment',
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
              children: [
                AssignmetCard(),
                AssignmetCard(),
                AssignmetCard(),
                AssignmetCard(),
                AssignmetCard(),
                AssignmetCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AssignmetCard extends StatelessWidget {
  const AssignmetCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE1E3E8)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xffE1E3E8),
              border: Border.all(color: Color(0xffE6EFFF)),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Text(
              'Mathematics',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff6789CA),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Surface Areas and Volumes',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Assign Date',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff777777),
                ),
              ),
              Spacer(),
              Text(
                '10 Nov 20',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Last Submission Date',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff777777),
                ),
              ),
              Spacer(),
              Text(
                '10 Dec 20',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          TextButton(
            child: Text(
              'To be Submitted',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            onPressed: () {},
            style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 55),
                backgroundColor: Color(0xff6789CA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
          )
        ],
      ),
    );
  }
}
