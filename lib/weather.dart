import 'dart:async';
import 'package:hansungcapstone_bugiweather/location.dart';
import 'package:hansungcapstone_bugiweather/networking.dart';

// https://api.openweathermap.org/data/2.5/forecast?q=Seoul&appid=d85c3f5894dd01de3ea4d4a81f3a73b0&units=metric&lang=kr&cnt=3

const apiKey = 'd85c3f5894dd01de3ea4d4a81f3a73b0';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';
const openForecastURL = 'https://api.openweathermap.org/data/2.5/forecast';
const addons = '&appid=$apiKey&lang=kr&units=metric';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    var url = '$openWeatherMapURL?q=$cityName$addons';
    NetworkHelper networkHelper = NetworkHelper(url);
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location
            .longitude}$addons');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getCityForecast(String cityName) async {
    var url = '$openForecastURL?q=$cityName$addons&cnt=3';
    NetworkHelper networkHelper = NetworkHelper(url);
    var forecastData = await networkHelper.getData();
    return forecastData;
  }
  // cnt=3 : 3시간 간격 일기예보 데이터 중 맨 앞 3개만 불러오기

  Future<dynamic> getLocationForecast() async{
    Location location = Location();
    await location.getCurrentLocation();
    var url = '$openForecastURL?lat=${location.latitude}&lon=${location.longitude}$addons&cnt=3';
    NetworkHelper networkHelper = NetworkHelper(url);
    var forecastData = await networkHelper.getData();
    return forecastData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧️';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

}
