import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';

class Driver_licene extends StatefulWidget {
  const Driver_licene({Key? key}) : super(key: key);

  @override
  _Driver_liceneState createState() => _Driver_liceneState();
}

class _Driver_liceneState extends State<Driver_licene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Navi_bar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[button('Driver licene Details', '/')],
          ),
          SizedBox(
            height: 53.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300.h,
                width: 250.w,
                color: Color.fromRGBO(229, 245, 246, 1),
              ),
              Container(
                height: 300.h,
                width: 250.w,
                color: Color.fromRGBO(229, 245, 246, 1),
              ),
            ],
          ),
          SizedBox(
            height: 80.h,
          ),
          button_back(),
        ],
      ),
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

  Widget button_back() {
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
