import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';

class User_database extends StatefulWidget {
  const User_database({Key? key}) : super(key: key);

  @override
  _User_databaseState createState() => _User_databaseState();
}

class _User_databaseState extends State<User_database> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Navi_bar(),
          Text(
            'User database',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 18.sp,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          SizedBox(
            height: 57.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              children: <Widget>[
                Text(
                  'User name',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                SizedBox(
                  width: 75.w,
                ),
                Text(
                  'Policy number',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                SizedBox(
                  width: 150.w,
                ),
                Text(
                  'Details',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              children: <Widget>[
                details('xxxxx'),
                SizedBox(
                  width: 130.w,
                ),
                details('xxxxx'),
                SizedBox(
                  width: 220.w,
                ),
                button(),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              children: <Widget>[
                details('xxxxx'),
                SizedBox(
                  width: 130.w,
                ),
                details('xxxxx'),
                SizedBox(
                  width: 220.w,
                ),
                button(),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              children: <Widget>[
                details('xxxxx'),
                SizedBox(
                  width: 130.w,
                ),
                details('xxxxx'),
                SizedBox(
                  width: 220.w,
                ),
                button(),
              ],
            ),
          ),
          SizedBox(
            height: 230.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(1062.w, 0.h, 10.w, 10.h),
            child: SizedBox(
              width: 150.w,
              height: 50.h,
              child: RaisedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/home_screen');
                },
                child: Text(
                  'Back',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                color: Color.fromRGBO(160, 213, 244, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48.r)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget details(String text) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ],
    );
  }

  Widget button() {
    return SizedBox(
      width: 150.w,
      height: 25.h,
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/user_database_1');
        },
        child: Text(
          'Details',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        color: Color.fromRGBO(11, 126, 193, 1),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
      ),
    );
  }
}
