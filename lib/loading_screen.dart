import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hansungcapstone_bugiweather/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(
      context,
      CupertinoPageRoute(builder: (context) {
        return LocationScreen(locationWeather: weatherData);
      }),  // MaterialPageRoute
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: SpinKitRing(
            color: Colors.white,
            size: 100,
          ),  // SpinKitDoubleBounce
        ),
    );  // Scaffold
  }
}