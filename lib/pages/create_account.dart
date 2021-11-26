import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regional_app/components/input_box.dart';

class Create_account extends StatefulWidget {
  const Create_account({Key? key}) : super(key: key);

  @override
  _Create_accountState createState() => _Create_accountState();
}

class _Create_accountState extends State<Create_account> {
  String binValue = 'Colombo';
  String districtVal = 'Malabe';
  List<String> subDistrict = [];

  String colombo_1 = 'Malabe';
  String kurunegala_1 = 'Thorayaya';
  String kandy_1 = 'Katugasthota';
  String gampaha_1 = 'Kadawatha';
  String kaluthara_1 = 'Panadura';
  String puttalm_1 = 'Kalpitiya';
  String nuwara_eliya_1 = 'Ambewela';
  String matale_1 = 'Sigiriya';

  List<String> subColombo = [
    'Malabe',
    'Pannipitiya',
    'Kottawa',
    'Maharagama',
    'Nugegoda',
    'Pettah'
  ];
  List<String> subKurunegala = [
    'Thorayaya',
    'Maspotha',
    'Wariyapola',
    'Polgahawela',
    'Mawathagama'
  ];
  List<String> subKandy = [
    'Katugasthota',
    'Panideniya',
    'Gatabe',
    'Digana',
    'Kadugannawa',
    'Galagedara'
  ];
  List<String> subGampaha = [
    'Kadawatha',
    'Wattala',
    'Kiribathgoda',
    'Ja-Ela',
    'Miriswatta'
  ];
  List<String> subKaluthara = [
    'Panadura',
    'Bandarawatta',
    'Horana',
    'Matugama'
  ];
  List<String> subPuttalam = ['Kalpitiya', 'Anamaduwa', 'Wennappuwa'];
  List<String> subNuwaraEliya = ['Ambewela', 'Ohiya', 'Pattipola', 'Hatton'];
  List<String> subMatale = ['Sigiriya', 'Nalanda'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 84.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 480.h,
                width: 500.h,
                color: Color.fromRGBO(239, 250, 251, 1),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(child: InputBox(text: 'User name', isObs: false)),
                    SizedBox(
                      height: 15.h,
                    ),
                    InputBox(text: 'Password', isObs: true),
                    SizedBox(
                      height: 15.h,
                    ),
                    InputBox(text: 'Verify password', isObs: true),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(150.w, 0, 150.w, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Select district',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w400),
                          ),
                          DropdownButton(
                            value: binValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            isExpanded: true,
                            iconSize: 24.sp,
                            elevation: 16,
                            underline: Container(
                              height: 2.h,
                              color: Colors.grey[700],
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                binValue = newValue!;
                                if (binValue == 'Colombo') {
                                  subDistrict = subColombo;
                                  districtVal = colombo_1;
                                } else if (binValue == 'Kurunegala') {
                                  subDistrict = subKurunegala;
                                  districtVal = kurunegala_1;
                                } else if (binValue == 'Kandy') {
                                  subDistrict = subKandy;
                                  districtVal = kandy_1;
                                } else if (binValue == 'Gampaha') {
                                  subDistrict = subGampaha;
                                  districtVal = gampaha_1;
                                } else if (binValue == 'Kaluthara') {
                                  subDistrict = subKaluthara;
                                  districtVal = kaluthara_1;
                                } else if (binValue == 'Puttalam') {
                                  subDistrict = subPuttalam;
                                  districtVal = puttalm_1;
                                } else if (binValue == 'Nuwara-Eliya') {
                                  subDistrict = subNuwaraEliya;
                                  districtVal = nuwara_eliya_1;
                                } else if (binValue == 'Matale') {
                                  subDistrict = subMatale;
                                  districtVal = matale_1;
                                }
                              });
                            },
                            items: [
                              'Colombo',
                              'Kurunegala',
                              'Kandy',
                              'Gampaha',
                              'Kaluthara',
                              'Puttalam',
                              'Nuwara-Eliya',
                              'Matale'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onTap: () {},
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            'Select branch',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w400),
                          ),
                          DropdownButton(
                            value: districtVal,
                            icon: const Icon(Icons.arrow_drop_down),
                            isExpanded: true,
                            iconSize: 24.sp,
                            elevation: 16,
                            underline: Container(
                              height: 2.h,
                              color: Colors.grey[700],
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                districtVal = newValue!;
                              });
                            },
                            items: subDistrict
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onTap: () {},
                          ),
                        ],
                      ),
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
                            context, '/create_account1', (route) => false);
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.r)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
