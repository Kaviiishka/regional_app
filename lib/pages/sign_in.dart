import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/input_box.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  _Sign_inState createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 84.h),
        child: Column(
          children: [
            Container(
              height: 400.h,
              width: 500.h,
              color: Color.fromRGBO(239, 250, 251, 1),
              child: Column(
                children: [
                  SizedBox(
                    height: 77.h,
                  ),
                  Container(child: InputBox(text: 'User name', isObs: false)),
                  SizedBox(
                    height: 44.h,
                  ),
                  InputBox(text: 'Password', isObs: true),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 63.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.w,
                  height: 50.h,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home_screen', (route) => false);
                    },
                    child: Text(
                      'Sign in',
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
