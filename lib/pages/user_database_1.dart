import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';

class User_database_1 extends StatefulWidget {
  const User_database_1({Key? key}) : super(key: key);

  @override
  _User_database_1State createState() => _User_database_1State();
}

class _User_database_1State extends State<User_database_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Navi_bar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 296.w),
            child: Text(
              'User database',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 18.sp,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(810.w, 0.h, 10.w, 0.h),
            child: Row(
              children: [
                Text(
                  'Search',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 160.w, vertical: 20.h),
                  color: Color.fromRGBO(229, 245, 246, 1),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 53.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
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
                  height: 10.h,
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
                  height: 10.h,
                ),
                Text(
                  'Renewal date',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Contact details',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 53.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'case ID',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  'Reference number',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  'Agent number',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                ),
                Column(
                  children: [
                    Text(
                      'Statues',
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    button1(),
                    SizedBox(
                      height: 20.h,
                    ),
                    button2(),
                    SizedBox(
                      height: 20.h,
                    ),
                    button3(),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(1062.w, 0.h, 10.w, 10.h),
            child: SizedBox(
              width: 150.w,
              height: 50.h,
              child: RaisedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/user_database');
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

  Widget button1() {
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

  Widget button2() {
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
        color: Color.fromRGBO(255, 4, 4, 1),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
      ),
    );
  }

  Widget button3() {
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
        color: Color.fromRGBO(255, 107, 0, 1),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
      ),
    );
  }
}
