import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';

class Confirmation_1 extends StatefulWidget {
  const Confirmation_1({Key? key}) : super(key: key);

  @override
  _Confirmation_1State createState() => _Confirmation_1State();
}

class _Confirmation_1State extends State<Confirmation_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Navi_bar(),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 485.w),
            child: Text(
              'Confirmation',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 30.sp,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          SizedBox(
            height: 90.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 150.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Estimated cost',
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
                  'Remarks',
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
            height: 300.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 289.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                next(),
                back(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget next() {
    return SizedBox(
      width: 141.w,
      height: 50.h,
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/confirmation_2');
        },
        child: Text(
          'Next',
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

  Widget back() {
    return SizedBox(
      width: 141.w,
      height: 50.h,
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/summary_1');
        },
        child: Text(
          'BACK',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        color: Color.fromRGBO(160, 213, 244, 1),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
      ),
    );
  }
}
