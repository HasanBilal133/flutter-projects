import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiWeather{
  ApiWeather(this.url);
  final String url;

  Future getData() async{
    http.Response response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    return data;
  }
}