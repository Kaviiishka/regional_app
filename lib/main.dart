import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/pages/accident_images.dart';
import 'package:regional_app/pages/agent_database.dart';
import 'package:regional_app/pages/agent_database_1.dart';
import 'package:regional_app/pages/approved.dart';
import 'package:regional_app/pages/confirmation_1.dart';
import 'package:regional_app/pages/confirmation_2.dart';
import 'package:regional_app/pages/confirmation_3.dart';
import 'package:regional_app/pages/driver_licene.dart';
import 'package:regional_app/pages/home_screen.dart';
import 'package:regional_app/pages/insurance_card.dart';
import 'package:regional_app/pages/login.dart';
import 'package:regional_app/pages/rejected.dart';
import 'package:regional_app/pages/rejection.dart';
import 'package:regional_app/pages/review.dart';
import 'package:regional_app/pages/sign_in.dart';
import 'package:regional_app/pages/notification.dart';
import 'package:regional_app/pages/summary_1.dart';
import 'package:regional_app/pages/user_database.dart';
import 'package:regional_app/pages/user_database_1.dart';
import 'package:regional_app/pages/vehicle.dart';
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
          '/user_database_1': (context) => User_database_1(),
          '/agent_database_1': (context) => Agent_database_1(),
          '/summary_1': (context) => Summary_1(),
          '/driver_licene': (context) => Driver_licene(),
          '/vehicle': (context) => Vehicle(),
          '/insurance_card': (context) => Insurance_card(),
          '/accident_images': (context) => Accident_images(),
          '/confirmation_1': (context) => Confirmation_1(),
          '/confirmation_2': (context) => Confirmation_2(),
          '/confirmation_3': (context) => Confirmation_3(),
          '/rejection': (context) => Rejection(),
        },
      ),
    ));
