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
      body: Center(
        child: Container(
          //padding: EdgeInsets.fromLTRB(390.w, 84.h, 390.w, 236.h),
          //margin: EdgeInsets.fromLTRB(390.w, 84.h, 390.w, 236.h),
          //color: Color.fromRGBO(239, 250, 251, 1),
          child: Column(
            children: [
              SizedBox(
                height: 120.h,
              ),
              InputBox(text: 'User name', isObs: false),
              SizedBox(
                height: 44.h,
              ),
              InputBox(text: 'Password', isObs: true),
              SizedBox(
                height: 189.h,
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
      ),
    );
  }
}
