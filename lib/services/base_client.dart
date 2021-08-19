
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_topics/services/api_exeptions.dart';
import 'package:http/http.dart' as http;

class BaseClient {
  static const int timeOutDuration = 20;

  // Get method
  Future<dynamic> get(String baseUrl, String endPoint) async {
    Uri url = Uri.parse(baseUrl + endPoint);
    try {
      var response = await http.get(url).timeout(const Duration(seconds: timeOutDuration));
      return _processResponse(response);
    }
    on SocketException {
      throw FetchDataException(
        "No internet connection",
        url.toString()
      );
    }
    on TimeoutException{
      throw ApiNotRespondingException(
        "Api not responding in time",
        url.toString()
      );
    }
  }

  // Get method
  Future<dynamic> post(String baseUrl, String endPoint, dynamic payloadObject) async {
    Uri url = Uri.parse(baseUrl + endPoint);
    var payload = json.encode(payloadObject);
    try {
      var response = await http.post(url, body: payload).timeout(const Duration(seconds: timeOutDuration));
      return _processResponse(response);
    }
    on SocketException {
      throw FetchDataException(
        "No internet connection",
        url.toString()
      );
    }
    on TimeoutException{
      throw ApiNotRespondingException(
        "Api not responding in time",
        url.toString()
      );
    }
  }




  dynamic _processResponse(http.Response response){
    switch (response.statusCode) {
      case 200:
        return utf8.decode(response.bodyBytes);
      case 400:
        throw BadRequestException(
          utf8.decode(response.bodyBytes),
          response.request!.url.toString(),

        );
      case 401:
      case 403:
        throw UnauthorizedException(
          utf8.decode(response.bodyBytes),
          response.request!.url.toString(),
          
        );
      case 500:
      default:
        FetchDataException(
          "Error occured with this code : ${response.statusCode}",
          response.request!.url.toString(),
        );
    }
  }
}