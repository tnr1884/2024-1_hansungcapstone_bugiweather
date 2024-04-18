import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hansungcapstone_bugiweather/NaverMap/font.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backimg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              flex: 12,
              child: Container(
                // color: Color(0xff74d5ff),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "3월 25일 (월)",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Text(
                      "강남구 논현동",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Icon(
                      Icons.sunny,
                      size: 80,
                    ),
                    SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Text(
                      "맑음",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Text(
                      "15°C",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 35,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "최저",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "10°C",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "최고",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "20°C",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                          width: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "3월 25일 14:30",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.update)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 10,
              child: Container(
                  // color: Color(0xffbfd5ff),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(width: 10),
                      ListViewItem(),
                      SizedBox(width: 20),
                      ListViewItem(),
                      SizedBox(width: 20),
                      ListViewItem(),
                      SizedBox(width: 20),
                      ListViewItem(),
                      SizedBox(width: 20),
                    ],
                  )
                // child : ListView(
                //   padding:const EdgeInsets.all(12),
                //   scrollDirection: Axis.horizontal,
                //   shrinkWrap: false,
                //   physics: ScrollPhysics(),
                //   children: [
                //
                //     SizedBox(width: 10),
                //     ListViewItem(),
                //     SizedBox(width: 20),
                //     ListViewItem(),
                //     SizedBox(width: 20),
                //     ListViewItem(),
                //     SizedBox(width: 20),
                //     ListViewItem(),
                //     SizedBox(width: 20),
                //   ],
                // ),
              ),
            ),
          ],
        ),
      )
      ,
    );
  }
}

Widget ListViewItem() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        "지금",
        textAlign: TextAlign.start,
        overflow: TextOverflow.clip,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 25,
          color: Color(0xff000000),
        ),
      ),
      SizedBox(
        height: 16,
      ),
      Icon(
        Icons.sunny,
        size: 60,
        color: Color(0xff212435),
      ),
      SizedBox(
        height: 16,
      ),
      Text(
        "15°C",
        textAlign: TextAlign.start,
        overflow: TextOverflow.clip,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 25,
          color: Color(0xff000000),
        ),
      ),
      SizedBox(
        height: 16,
      ),
      Text(
        "90%",
        textAlign: TextAlign.start,
        overflow: TextOverflow.clip,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 18,
          color: Color(0xff000000),
        ),
      ),
    ],
  );
}
