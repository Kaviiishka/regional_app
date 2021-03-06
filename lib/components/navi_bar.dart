import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Navi_bar extends StatefulWidget {
  const Navi_bar({Key? key}) : super(key: key);

  @override
  _Navi_barState createState() => _Navi_barState();
}

class _Navi_barState extends State<Navi_bar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // body: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 38.h),
      //   child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: SizedBox(
            height: 87.h,
            width: 137.w,
            child: Image(
              image: AssetImage('assets/car-2 1.jpg'),
            ),
          ),
        ),
        // SizedBox(
        //   height: 38.h,
        //   width: 670.w,
        // ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.w),
          child: SizedBox(
            width: 500.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home_screen', (route) => false);
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(
                      context,
                      '/review',
                    );
                  },
                  child: Text(
                    'Review',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20.w, 0),
                  child: SizedBox(
                    width: 54.w,
                    height: 31.h,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/notification');
                      },
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Ink(
                        width: 90.w,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 11, 126, 193),
                                  Color.fromARGB(255, 0, 255, 255)
                                ]),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Container(
                          constraints:
                              BoxConstraints(minWidth: 54.w, minHeight: 31.h),
                          alignment: Alignment.center,
                          child: const Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (route) => false);
                  },
                  child: Text(
                    'Sign out',
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
        ),
      ],
      //   ),
      // ),
    );
  }
}
