import 'package:flutter/material.dart';
import 'package:hansungcapstone_bugiweather/Daily/location.dart';
import 'package:hansungcapstone_bugiweather/Daily/weekWeather.dart';
import 'package:hansungcapstone_bugiweather/Daily/network.dart' as networkDaily;

//void main() => runApp(MyApp());

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Single Button Example'),
        ),
        body: ButtonWidget(),
      ),
    );
  }
}*/

class ButtonWidget extends StatefulWidget {

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {

  double? latitude3;
  double? longitude3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() async{
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3 = myLocation.latitude2;
    longitude3 = myLocation.longitude2;
    print(latitude3);
    print(longitude3);

    final data = await networkDaily.getJsonData();
    final dailyForecasts = data['daily'] as List<dynamic>;

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return weekScreen(parseWeatherData: dailyForecasts,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => backsCcreen()),
          // );
        },
        child: Text('Button'),
      ),
    );
  }
}