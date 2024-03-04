import 'dart:convert';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:provider_skeleton/domain/network/base_api_service.dart';

import '../../utils/utils.dart';
import 'api_url.dart';
import 'app_exception.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;

    try {
      var baseUrl = await getBaseUrl(url);
      final response = await http
          .get(Uri.parse(baseUrl), headers: await getHeadersWithToken())
          .timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getGetApiResponseArgs(String url, String skip, String take) async {
    dynamic responseJson;

    try {
      var baseUrl = await getBaseUrl(url);
      // final queryParameters = {
      //   ApiUrl.skip: skip,
      //   ApiUrl.take: take,
      // };
      // final uri = Uri.parse(baseUrl).replace(queryParameters: queryParameters);
      final uri = Uri.parse(baseUrl);
      final response = await http
          .get(uri, headers: await getHeadersWithToken())
          .timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      var baseUrl = await getBaseUrl(url);
      // if (url == ApiUrl.sendOtp || url == ApiUrl.verifyOtp) {
      //   Response response = await post(Uri.parse(baseUrl),
      //           body: utf8.encode(json.encode(data)), headers: getHeaders())
      //       .timeout(const Duration(seconds: 20));
      //   responseJson = returnResponse(response);
      // } else {
        Response response = await post(Uri.parse(baseUrl),
                body: json.encode(data),
                headers: await getHeadersWithToken())
            .timeout(const Duration(seconds: 20));
        responseJson = returnResponse(response);
      // }
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getPatchApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      var baseUrl = await getBaseUrl(url);
      // if (url == ApiUrl.createUser) {
      //   Response response = await http.patch(Uri.parse(baseUrl),
      //       body: utf8.encode(json.encode(data)), headers: getHeaders())
      //       .timeout(const Duration(seconds: 20));
      //   responseJson = returnResponse(response);
      // } else {
        Response response = await http.patch(Uri.parse(baseUrl),
            body: json.encode(data),
            headers: await getHeadersWithToken())
            .timeout(const Duration(seconds: 20));
        responseJson = returnResponse(response);
      // }
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponseWithoutPayload(String url) async {
    dynamic responseJson;
    try {
      var baseUrl = await getBaseUrl(url);
      Response response =
          await post(Uri.parse(baseUrl), headers: await getHeadersWithToken())
              .timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getDeleteApiResponse(String url, String token) async {
    dynamic responseJson;
    try {
      var baseUrl = await getBaseUrl(url);
      Response response =
          await delete(Uri.parse('$baseUrl$token'), headers: getHeaders())
              .timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getPutApiResponse(String url, data) async {
    dynamic responseJson;
    try {
      var baseUrl = await getBaseUrl(url);
      Response response = await put(Uri.parse(baseUrl),
          body: utf8.encode(json.encode(data)),
          headers: await getHeadersWithToken())
          .timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);

        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        throw UnauthorizedException(response.body.toString());
      case 500:
        throw ApiException(response.body.toString());
      default:
        throw FetchDataException(
            'Error occurred while communicating with server with status code ${response.statusCode}');
    }
  }

  Future<String> getBaseUrl(String url) async {
    String? baseUrl;
    baseUrl = ApiUrl.hostUrl;
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      throw NoInternetException('No Internet Connection');
    } else {
      if (baseUrl != 'null') {
        baseUrl = '$baseUrl$url';
      } else {
        throw InvalidUrlException('Invalid URL');
      }
      if (kDebugMode) {
        print('baseUrl---> $baseUrl');
      }
    }

    return baseUrl;
  }


}
