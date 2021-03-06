import 'package:flutter/material.dart';
import '/services/location.dart';
import 'location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState(){
    super.initState();
    getLocation();
  }

  void getLocation() async{

    var myLocationWeather = WeatherModel();
    var locationWeather = await myLocationWeather.getWeatherLocation();

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(locationWeather);
    }));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitCircle(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}