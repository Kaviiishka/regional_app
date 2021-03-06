import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Approved extends StatefulWidget {
  const Approved({Key? key}) : super(key: key);

  @override
  _ApprovedState createState() => _ApprovedState();
}

class _ApprovedState extends State<Approved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Navi_bar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Approved',
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
                      '/review',
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
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w, vertical: 0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  //height: 40.h,
                  width: 750.w,
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
                      height: 300.h,
                      width: 250.w,
                      child: SfCalendar(
                        view: CalendarView.month,
                      ),
                      //color: Color.fromRGBO(229, 245, 246, 1),
                    ),
                  ],
                ),
                // SizedBox(
                //   width: 58.w,
                // ),
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
                      context, '/review', (route) => false);
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
