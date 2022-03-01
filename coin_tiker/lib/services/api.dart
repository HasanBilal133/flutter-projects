import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:coin_tiker/utilises/coin_data.dart';
import 'dart:convert';

class CoinApi{

  Future getLatestPrice(String crypto, String cur) async {
    http.Response response = await http.get(
      Uri.parse(url+crypto+cur),
      headers: {
        'x-ba-key': 'YWE0ZDZiOTM1NjczNGNhZjk0YjVlMjYyZDM1YmM3NmU',
      },
    );
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return data;
    }
    else{
      throw 'Error ${response.statusCode}';
    }

  }

}