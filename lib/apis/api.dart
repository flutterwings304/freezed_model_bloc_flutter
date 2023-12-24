import 'package:dio/dio.dart';

class APIClass {
  static String baseUrl = "https://dummy.restapiexample.com/api/v1/";

  static getRequest(String endPoint) async {
    try {
      final response = await Dio().get(baseUrl + endPoint);
      return response.data;
    } catch (e) {
       if (e is DioException) {
        print("Dio Exception ${e.message}");
      }
      print(e);
    }
  }

  static deleteRequest(String endPoint) async {
    try {
      final response = await Dio().delete(baseUrl + endPoint);
      return response.data;
    } catch (e) {
       if (e is DioException) {
        print("Dio Exception ${e.message}");
      }
      print(e);
    }
  }

  static postRequest(String endPoint, Map<String, dynamic> myData) async {
    try {
      final response = await Dio().post(baseUrl + endPoint, data: myData);
      return response.data;
    } catch (e) {
      if (e is DioException) {
        print("Dio Exception ${e.message}");
      }
      print(e);
    }
  }

  static putRequest(String endPoint, Map<String, dynamic> myData) async {
    try {
      final response = await Dio().put(baseUrl + endPoint, data: myData);
      return response.data;
    } catch (e) {
      if (e is DioException) {
        print("Dio Exception ${e.message}");
      }
      print(e);
    }
  }
}
