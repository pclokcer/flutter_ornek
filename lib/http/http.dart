import 'dart:async';
import 'dart:io';
import 'package:deneme2/mobx/store.dart';
import 'package:http/http.dart' as http;

class HttpServices {
  Future<String> getRequest(url) async => http.get(
        url,
        headers: {
          HttpHeaders.authorizationHeader: StoreMobx().token.toString(),
          'Accept': 'application/json'
        },
      ).then((response) {
        return response.body;
      }).whenComplete(() => null);

  Future<String> postRequest(url, body) async => http.post(
        url,
        body: body,
        headers: {
          HttpHeaders.authorizationHeader: StoreMobx().token.toString(),
          'Accept': 'application/json'
        },
      ).then((response) {
        return response.body;
      }).whenComplete(() => null);
}

/* postRequest(url, body) async => http.post(
        url,
        body: body,
        headers: {
          HttpHeaders.authorizationHeader: StoreMobx().token.toString(),
          'Accept': 'application/json'
        },
      ).then((response) {
        return response.body;
      }).whenComplete(() => null);*/
