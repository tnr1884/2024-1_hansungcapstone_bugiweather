import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class dustScreen extends StatefulWidget {
  const dustScreen({super.key});

  @override
  State<dustScreen> createState() => _dustScreenState();
}

class _dustScreenState extends State<dustScreen> {
  Color backgroundColor = Colors.blue;
  final now = DateTime.now().toUtc().add(Duration(hours: 9));

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    updateBackgroundBasedOnTime();
  }

  void updateBackgroundBasedOnTime() {
    final hour = DateTime.now().hour; // Get current hour
    print(hour);
    setState(() {
      if (hour >= 6 && hour < 11) {
        backgroundColor = Colors.green; // Morning color
      } else if (hour >= 11 && hour < 18) {
        backgroundColor = Colors.blue; // Afternoon color
      } else {
        backgroundColor = Colors.red; // Evening/Night color
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        SizedBox(height: 400,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: backgroundColor, // This color will be blurred.
          ),
        ),
        BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16), // Add margin
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // Rounded corners
                color: Colors.white.withOpacity(0.3),
              ),
              child: Container(
                child: Column(
                    children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sunny,
                        size: 50,
                      ),
                      Text(
                        '매우 나쁨',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            DateFormat('M월 d일 h:mm a', 'ko_KR').format(now),
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                              ),
                              Text('미세먼지 (PM 10)')
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.sunny,
                                size: 50,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 10,
                                  child: LinearProgressIndicator(
                                    value: 0.5, // 50% 채워짐
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.blue),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                              ),
                              Text('초미세먼지 (PM 2.5)')
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.sunny,
                                size: 50,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 10,
                                  child: LinearProgressIndicator(
                                    value: 0.5,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.blue),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                              ),
                              Text('오존 (03)')
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.sunny,
                                size: 50,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 10,
                                  child: LinearProgressIndicator(
                                    value: 0.5,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.blue),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                              ),
                              Text('이산화질소 (NO2)')
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.sunny,
                                size: 50,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 10,
                                  child: LinearProgressIndicator(
                                    value: 0.5, // 50% 채워짐
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.blue),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                              ),
                              Text('일산화탄소 (CO)')
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.sunny,
                                size: 50,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 10,
                                  child: LinearProgressIndicator(
                                    value: 0.5,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.blue),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                              ),
                              Text('아황산가스 (SO2)')
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.sunny,
                                size: 50,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 10,
                                  child: LinearProgressIndicator(
                                    value: 0.5,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.blue),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 20, // 원의 너비
                                height: 20, // 원의 높이
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent, // 원의 색상
                                  shape: BoxShape.circle, // 원 모양 설정
                                ),
                              ),
                              SizedBox(width: 10), // 원과 텍스트 사이의 간격
                              Text(
                                "좋음", // 텍스트 내용
                                style: TextStyle(
                                  fontSize: 16, // 텍스트 크기
                                  color: Colors.black, // 텍스트 색상
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 20, // 원의 너비
                                height: 20, // 원의 높이
                                decoration: BoxDecoration(
                                  color: Colors.green, // 원의 색상
                                  shape: BoxShape.circle, // 원 모양 설정
                                ),
                              ),
                              SizedBox(width: 10), // 원과 텍스트 사이의 간격
                              Text(
                                "보통", // 텍스트 내용
                                style: TextStyle(
                                  fontSize: 16, // 텍스트 크기
                                  color: Colors.black, // 텍스트 색상
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 20, // 원의 너비
                                height: 20, // 원의 높이
                                decoration: BoxDecoration(
                                  color: Colors.yellowAccent, // 원의 색상
                                  shape: BoxShape.circle, // 원 모양 설정
                                ),
                              ),
                              SizedBox(width: 10), // 원과 텍스트 사이의 간격
                              Text(
                                "나쁨", // 텍스트 내용
                                style: TextStyle(
                                  fontSize: 16, // 텍스트 크기
                                  color: Colors.black, // 텍스트 색상
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 20, // 원의 너비
                                height: 20, // 원의 높이
                                decoration: BoxDecoration(
                                  color: Colors.red, // 원의 색상
                                  shape: BoxShape.circle, // 원 모양 설정
                                ),
                              ),
                              SizedBox(width: 10), // 원과 텍스트 사이의 간격
                              Text(
                                "매우나쁨", // 텍스트 내용
                                style: TextStyle(
                                  fontSize: 16, // 텍스트 크기
                                  color: Colors.black, // 텍스트 색상
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ]),
              ),
            )
        )
      ]),
    );
  }
}
