import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';

class Summary_1 extends StatefulWidget {
  const Summary_1({Key? key}) : super(key: key);

  @override
  _Summary_1State createState() => _Summary_1State();
}

class _Summary_1State extends State<Summary_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Navi_bar(),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 98.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Summary',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 30.sp,
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
            padding: EdgeInsets.symmetric(horizontal: 95.w),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    summary('Date-'),
                    SizedBox(
                      height: 5.h,
                    ),
                    summary('Time-'),
                    SizedBox(
                      height: 5.h,
                    ),
                    summary('Policy number- xxxxxx'),
                    SizedBox(
                      height: 5.h,
                    ),
                    summary('Vehicle number- xxxxxx'),
                    SizedBox(
                      height: 5.h,
                    ),
                    summary('Chasis number- xxxxxx'),
                    SizedBox(
                      height: 5.h,
                    ),
                    summary('Millage- xxxxxx'),
                    SizedBox(
                      height: 5.h,
                    ),
                    summary('Diver Name- xxxxxx'),
                    SizedBox(
                      height: 5.h,
                    ),
                    summary('Diver Licene details- xxxxxx'),
                    SizedBox(
                      height: 5.h,
                    ),
                    summary('Nature of Accident- xxxxxxxxxxxx'),
                    SizedBox(
                      height: 15.h,
                    ),
                    summary('Reference Number- xxxxxx'),
                    SizedBox(
                      height: 15.h,
                    ),
                    summary('Client Contact number- xxxxxx'),
                    SizedBox(
                      height: 5.h,
                    ),
                    summary('Agent Contact number- xxxxxx'),
                  ],
                ),
                SizedBox(
                  width: 450.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    button('Driver Licence Details', '/driver_licene'),
                    SizedBox(
                      height: 30.h,
                    ),
                    button('Vehilce Details', '/vehicle'),
                    SizedBox(
                      height: 30.h,
                    ),
                    button('Insurance Card Details', '/insurance_card'),
                    SizedBox(
                      height: 30.h,
                    ),
                    button('Accident images', '/accident_images'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 289.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button_approve(),
                button_reject(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget summary(String text) {
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

  Widget button(String text, text1) {
    return SizedBox(
      width: 200.w,
      height: 50.h,
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, text1);
        },
        child: Text(
          text,
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

  Widget button_approve() {
    return SizedBox(
      width: 141.w,
      height: 50.h,
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/confirmation_1');
        },
        child: Text(
          'Approve',
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

  Widget button_reject() {
    return SizedBox(
      width: 141.w,
      height: 50.h,
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/rejection');
        },
        child: Text(
          'Reject',
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
