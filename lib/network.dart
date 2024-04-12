import 'dart:convert';
import 'package:http/http.dart' as http;
const String apiKey = '30615eae9b4b4d225f11da0a0c5a4232';
const String baseUrl = 'https://api.openweathermap.org/data/3.0/onecall';

Future<dynamic> getJsonData() async {
  const lat = "37.4967";
  const lon = "127.063";
  final url = '$baseUrl?lat=$lat&lon=$lon&exclude=current,minutely,hourly&appid=$apiKey';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    String jsonData = response.body;
    var parsingData = jsonDecode(jsonData);
    return parsingData;
  } else {
    throw Exception('Failed to load weather data');
  }
}

