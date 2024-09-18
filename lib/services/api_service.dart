import 'package:dio/dio.dart';

import '../models/countri_model.dart';

class ApiService{
  final Dio _dio = Dio();
  
  Future<List<Countri>> fetchCountries() async {
    final response = await _dio.get(
      'https://restcountries.com/v3.1/all',
    );
    if (response.statusCode == 200) {
      List<dynamic> countriJson = response.data['flag']['name'];
      return countriJson.map((json) => Countri.fromJson(json)).toList();
    } else {throw Exeption('failed');
    }
  }
}

class Exeption {
  Exeption(String s);
}