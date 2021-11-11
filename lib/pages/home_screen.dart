import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Navi_bar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Home',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 48.sp,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 52.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/user_database');
                  },
                  child: Text(
                    'User Database',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 52.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/agent_database');
                  },
                  child: Text(
                    'Agent Database',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  //height: 40.h,
                  width: 633.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Calender',
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(250.w, 300.h, 0.w, 0.h),
                      color: Color.fromRGBO(229, 245, 246, 1),
                    ),
                  ],
                ),
                // SizedBox(
                //   width: 58.w,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
