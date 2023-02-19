import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class CallApi{

  final String _url = ' ';
  postData(data, apiUrl) async {
    var fullUrl =  _url + apiUrl ;
    //var fullUrl =  _url + apiUrl + await _getToken();
    return await http.post(
      fullUrl as Uri,
      body: jsonEncode(data),
      headers: _setHeaders()

    );

  }

  getData(apiUrl) async{
    var fullUrl = _url + apiUrl ;
    //var fullUrl = _url + apiUrl + await _getToken();

    return await http.get(
        fullUrl as Uri,
        headers: _setHeaders()
    );


  }

  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
  };


  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    return '?token=$token';
  }


}