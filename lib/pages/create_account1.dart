import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/input_box.dart';

class Create_account1 extends StatefulWidget {
  const Create_account1({Key? key}) : super(key: key);

  @override
  _Create_account1State createState() => _Create_account1State();
}

class _Create_account1State extends State<Create_account1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 60.h),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'XXXX Branch',
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 480.h,
                    width: 500.h,
                    color: Color.fromRGBO(239, 250, 251, 1),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25.h,
                        ),
                        InputBox(text: 'Branch manager name', isObs: true),
                        SizedBox(
                          height: 20.h,
                        ),
                        InputBox(text: 'Contact branch manager', isObs: true),
                        SizedBox(
                          height: 20.h,
                        ),
                        InputBox(text: 'Address', isObs: true),
                        SizedBox(
                          height: 20.h,
                        ),
                        InputBox(text: 'Office contact details', isObs: true),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
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
                                context, '/sign_in', (route) => false);
                          },
                          child: Text(
                            'Create account',
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
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
