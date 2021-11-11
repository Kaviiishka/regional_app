import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/pages/agent_database.dart';
import 'package:regional_app/pages/approved.dart';
import 'package:regional_app/pages/home_screen.dart';
import 'package:regional_app/pages/login.dart';
import 'package:regional_app/pages/rejected.dart';
import 'package:regional_app/pages/review.dart';
import 'package:regional_app/pages/sign_in.dart';
import 'package:regional_app/pages/notification.dart';
import 'package:regional_app/pages/user_database.dart';
//import 'package:device_preview/device_preview.dart';

void main() => runApp(ScreenUtilInit(
      designSize: const Size(1280, 720),
      builder: () => MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Login(),
          '/sign_in': (context) => Sign_in(),
          '/home_screen': (context) => Home_screen(),
          '/review': (context) => Review(),
          '/approved': (context) => Approved(),
          '/rejected': (context) => Rejected(),
          '/notification': (context) => Notification_1(),
          '/user_database': (context) => User_database(),
          '/agent_database': (context) => Agent_database(),
        },
      ),
    ));
