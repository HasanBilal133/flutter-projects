import 'location.dart';
import 'networking.dart';

const apiKey = '8197289706996bc19021096297f7ffea';

class WeatherModel {

  Future getWeatherCity(String city) async {
    var url = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=${apiKey}&units=metric';
    ApiWeather myWeather = ApiWeather(url);
    var dataWeather =  await myWeather.getData();
    return dataWeather;
  }

  Future getWeatherLocation() async {
    Location myLocation = Location();
    await myLocation.getCurrentLocation();
    var url = 'https://api.openweathermap.org/data/2.5/weather?lat=${myLocation.latitude}&lon=${myLocation.longitude}&appid=${apiKey}&units=metric';
    ApiWeather myWeather = ApiWeather(url);
    var dataWeather =  await myWeather.getData();
    return dataWeather;

  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}