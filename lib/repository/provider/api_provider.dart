import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:kapepi_app/model/kartu.dart';

class ApiProvider{
  //Nampilin sesuai No RM
  Future<Data?>showRMResult(String noReg) async{
    try{
      var uri = Uri.parse('http://119.2.50.170:6537/karanganyar/pasien/api').replace(queryParameters: {'no_reg': noReg});
      final response = await http.get(uri);
      if(response.statusCode == 200){
        var jsonResponse = jsonDecode(response.body);
        Kartu kartu = Kartu.fromJson(jsonResponse);
        return kartu.data;
      }
    }
    catch(error){
      if (kDebugMode) {
        print('caught error: $error');
      }
    }
  }
}