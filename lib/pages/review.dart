import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
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
                'Review',
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
                    Navigator.popAndPushNamed(
                      context,
                      '/approved',
                    );
                  },
                  child: Text(
                    'Approved',
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
                    Navigator.popAndPushNamed(
                      context,
                      '/rejected',
                    );
                  },
                  child: Text(
                    'Rejected',
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
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(250.w, 0.h, 10.w, 10.h),
            child: SizedBox(
              width: 150.w,
              height: 50.h,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home_screen', (route) => false);
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
                color: Color.fromRGBO(11, 126, 193, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48.r)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
