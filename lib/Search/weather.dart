import 'dart:async';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:hansungcapstone_bugiweather/Search/location.dart';
import 'package:hansungcapstone_bugiweather/Search/networking.dart';
import 'package:geocoding/geocoding.dart' as geocoder;

// https://api.openweathermap.org/data/2.5/forecast?q=Seoul&appid=d85c3f5894dd01de3ea4d4a81f3a73b0&units=metric&lang=kr&cnt=4

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
    var url = '$openForecastURL?q=$cityName$addons&cnt=4';
    NetworkHelper networkHelper = NetworkHelper(url);
    var forecastData = await networkHelper.getData();
    return forecastData;
  }
  // cnt=4 : 3시간 간격 일기예보 데이터 중 맨 앞 4개 불러오기, 오류 방지 위해 4개 불러서 3개 보이게

  Future<dynamic> getLocationForecast() async{
    Location location = Location();
    await location.getCurrentLocation();
    var url = '$openForecastURL?lat=${location.latitude}&lon=${location.longitude}$addons&cnt=4';
    NetworkHelper networkHelper = NetworkHelper(url);
    var forecastData = await networkHelper.getData();
    return forecastData;
  }
  Future<String> getAddress() async{
    Location location = Location();
    await location.getCurrentLocation();
    List<geocoder.Placemark> placemarks =
    await geocoder.placemarkFromCoordinates(location.latitude, location.longitude);
    geocoder.setLocaleIdentifier('kr');
    var locality = placemarks[0].locality;
    var sublocal = placemarks[0].subLocality;
    var address = "${locality} ${sublocal}";
    print(address);
    return address;
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
