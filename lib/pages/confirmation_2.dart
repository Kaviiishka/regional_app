import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';

class Confirmation_2 extends StatefulWidget {
  const Confirmation_2({Key? key}) : super(key: key);

  @override
  _Confirmation_2State createState() => _Confirmation_2State();
}

class _Confirmation_2State extends State<Confirmation_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Navi_bar(),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Confirmation',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 30.sp,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
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
          SizedBox(
            height: 130.h,
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

  Widget summary(String text) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 450.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
        ),
      ),
    );
  }

  Widget next() {
    return SizedBox(
      width: 141.w,
      height: 50.h,
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/confirmation_3');
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
          Navigator.pushNamed(context, '/confirmation_1');
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
