import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';

class Notification_1 extends StatefulWidget {
  const Notification_1({Key? key}) : super(key: key);

  @override
  _Notification_1State createState() => _Notification_1State();
}

class _Notification_1State extends State<Notification_1> {
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
          SizedBox(
            height: 9.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              children: <Widget>[
                Text(
                  'Notification',
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              children: [
                Text(
                  '20xx / xx / xx 12:30 A.M Agent xxxxx submit details',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(150.w, 0.h, 10.w, 10.h),
                  child: SizedBox(
                    width: 150.w,
                    height: 50.h,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/review', (route) => false);
                      },
                      child: Text(
                        'Review',
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              children: [
                Text(
                  '20xx / xx / xx 12:30 A.M Agent xxxxx submit details',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(150.w, 0.h, 10.w, 10.h),
                  child: SizedBox(
                    width: 150.w,
                    height: 50.h,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/review', (route) => false);
                      },
                      child: Text(
                        'Review',
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              children: [
                Text(
                  '20xx / xx / xx 12:30 A.M Agent xxxxx submit details',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(150.w, 0.h, 10.w, 10.h),
                  child: SizedBox(
                    width: 150.w,
                    height: 50.h,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/review', (route) => false);
                      },
                      child: Text(
                        'Review',
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
          ),
          SizedBox(
            height: 261.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(250.w, 0.h, 10.w, 10.h),
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
          )
        ],
      ),
    );
  }
}
