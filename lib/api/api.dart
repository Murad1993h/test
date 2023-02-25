import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/*
class CallApi{

  final String _url = 'http://codecell.live/api/customer/signup';
  postData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.post(
        fullUrl as Uri ,
        body: jsonEncode(data),
        headers: _setHeaders()
    );

  }




  getData(apiUrl) async{
    var fullUrl = _url + apiUrl;
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


 */
/* _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    return '?token=$token';
  }*//*



}*/




class CallApi{
  final String _url="http://codecell.live/api/customer/signup";
  postData(data, apiUrl) async{
    var fullUrl=_url+apiUrl;
   return await http.post(
        Uri.parse(fullUrl),
      body: jsonEncode(data),
      headers: _setHeaders(),
    );
  }

  _setHeaders()=>{
    'Content-type':'application/json',
    'accept':'application/json',

  };
}
