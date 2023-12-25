import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

class APIClass {
  static String baseUrl = "https://dummy.restapiexample.com/api/v1/";

  static getRequest(String endPoint) async {
    try {
      final response = await Dio().get(baseUrl + endPoint);
      return response.data;
    } on TimeoutException {
      return {
        "status": "false",
        "message": 'The connection has timed out, Please try again!'
      };
    } on SocketException {
      print("Internet Issue! No Internet connection 😑");

      return {
        "status": "false",
        "message": "Internet Issue! No Internet connection 😑"
      };
    } catch (e) {
      return {"status": "false", "message": "Someting went wrong"};
    }
  }

  static deleteRequest(String endPoint) async {
    try {
      final response = await Dio().delete(baseUrl + endPoint);
      return response.data;
    } on TimeoutException {
      return {
        "status": "false",
        "message": 'The connection has timed out, Please try again!'
      };
    } on SocketException {
      print("Internet Issue! No Internet connection 😑");

      return {
        "status": "false",
        "message": "Internet Issue! No Internet connection 😑"
      };
    } catch (e) {
      if (e is DioException) {
        print(e);
      }
      return {"status": "false", "message": "Someting went wrong"};
    }
  }

  static postRequest(String endPoint, Map<String, dynamic> myData) async {
    try {
      final response = await Dio().post(baseUrl + endPoint, data: myData);
      return response.data;
    } on TimeoutException {
      return {
        "status": "false",
        "message": 'The connection has timed out, Please try again!'
      };
    } on SocketException {
      print("Internet Issue! No Internet connection 😑");

      return {
        "status": "false",
        "message": "Internet Issue! No Internet connection 😑"
      };
    } catch (e) {
      return {"status": "false", "message": "Someting went wrong"};
      print(e);
    }
  }

  static putRequest(String endPoint, Map<String, dynamic> myData) async {
    try {
      final response = await Dio().put(baseUrl + endPoint, data: myData);
      return response.data;
    } on TimeoutException {
      return {
        "status": "false",
        "message": 'The connection has timed out, Please try again!'
      };
    } on SocketException {
      print("Internet Issue! No Internet connection 😑");

      return {
        "status": "false",
        "message": "Internet Issue! No Internet connection 😑"
      };
    } catch (e) {
      return {"status": "false", "message": "Someting went wrong"};
    }
  }
}
