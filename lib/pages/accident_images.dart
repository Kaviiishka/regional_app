import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/navi_bar.dart';

class Accident_images extends StatefulWidget {
  const Accident_images({Key? key}) : super(key: key);

  @override
  _Accident_imagesState createState() => _Accident_imagesState();
}

class _Accident_imagesState extends State<Accident_images> {
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
            children: <Widget>[button('Insurance card details', '/')],
          ),
          SizedBox(
            height: 53.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(336.w, 0.h, 348.w, 0.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 161.h,
                      width: 144.w,
                      color: Color.fromRGBO(229, 245, 246, 1),
                    ),
                    Container(
                      height: 161.h,
                      width: 144.w,
                      color: Color.fromRGBO(229, 245, 246, 1),
                    ),
                    Container(
                      height: 161.h,
                      width: 144.w,
                      color: Color.fromRGBO(229, 245, 246, 1),
                    ),
                    Container(
                      height: 161.h,
                      width: 144.w,
                      color: Color.fromRGBO(229, 245, 246, 1),
                    ),
                  ],
                ),
                SizedBox(
                  height: 21.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 161.h,
                      width: 144.w,
                      color: Color.fromRGBO(229, 245, 246, 1),
                    ),
                    Container(
                      height: 161.h,
                      width: 144.w,
                      color: Color.fromRGBO(229, 245, 246, 1),
                    ),
                    Container(
                      height: 161.h,
                      width: 144.w,
                      color: Color.fromRGBO(229, 245, 246, 1),
                    ),
                    Container(
                      height: 161.h,
                      width: 144.w,
                      color: Color.fromRGBO(229, 245, 246, 1),
                    ),
                  ],
                ),
              ],
            ),
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
