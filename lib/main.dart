import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BoogieWeather',
      home: SomeWidget(),
    );
  }
}

class SomeWidget extends StatelessWidget {
  const SomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0,-1.0),
            end: Alignment(0,1),
            colors: [Color(0xff73d5ff), Color(0xffbed5de)]
          )
        ),
        padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 30.0),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white.withOpacity(0.5)
              ),
              alignment: Alignment.centerLeft,
              height: 60, width: 350,
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Text("위치 검색...",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.3)
              ),),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 80, 200, 450),
              child: Text(
                "즐겨찾는 위치",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 40),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 0),
              scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 130, width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white.withOpacity(0.5)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: const Column(
                        children: [
                          SizedBox(
                            child: Text(
                              "Forecast data here",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black87,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 130, width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white.withOpacity(0.5)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: const Column(
                        children: [
                          SizedBox(
                            child: Text(
                              "Forecast data here",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black87,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 130, width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white.withOpacity(0.5)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: const Column(
                        children: [
                          SizedBox(
                            child: Text(
                              "Forecast data here",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black87,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
            )
          ],
        ),
      )
    );
  }
}
