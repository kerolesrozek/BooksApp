import 'package:dio/dio.dart';

class ApiServices {

final Dio _dio;
final String baseUrl='https://www.googleapis.com/books/v1/';

  ApiServices(this._dio);
 Future<Map<String,dynamic>> get({required String endpoin })async{
    Response response=await _dio.get('$baseUrl$endpoin');
   Map<String,dynamic>jsonData= response.data;
   return jsonData;
  }

}