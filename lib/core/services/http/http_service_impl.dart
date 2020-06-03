import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:my_provider_architecture_template/core/utils/network_utils.dart' as network_utils;
import 'package:my_provider_architecture_template/core/exceptions/network_exception.dart';
import 'package:my_provider_architecture_template/core/services/http/http_service.dart';
import 'package:my_provider_architecture_template/core/utils/file_helper.dart';
import 'package:my_provider_architecture_template/core/utils/logger.dart';
import 'package:my_provider_architecture_template/locator.dart';

/// Helper service that abstracts away common HTTP Requests
class HttpServiceImpl implements HttpService {
  final _fileHelper = locator<FileHelper>();

  final _dio = Dio();
  HttpClient client = new HttpClient();
  @override
  Future<dynamic> getHttp(String route) async {
    Response response;

    Logger.d('Sending GET to $route');

    try {
      final fullRoute = '$route';
      response = await _dio.get(
        fullRoute,
        options: Options(
          contentType: 'application/json',
        ),
      );
    } on DioError catch (e) {
      Logger.e('HttpService: Failed to GET ${e.message}');
      throw NetworkException(e.message);
    }

    network_utils.checkForNetworkExceptions(response);

    // For this specific API its decodes json for us
    return response.data;
  }

  @override
  Future<dynamic> postHttp(String route, dynamic body) async {
    Response response;

    Logger.d('Sending $body to $route');

    try {
      final fullRoute = '$route';
      response = await _dio.post(
        fullRoute,
        data: body,
        onSendProgress: network_utils.showLoadingProgress,
        onReceiveProgress: network_utils.showLoadingProgress,
        options: Options(
          contentType: 'application/json',
        ),
      );
    } on DioError catch (e) {
      Logger.e('HttpService: Failed to POST ${e.message}');
      throw NetworkException(e.message);
    }

    network_utils.checkForNetworkExceptions(response);

    // For this specific API its decodes json for us
    return response.data;
  }

  @override
  Future<dynamic> postHttpForm(
    String route,
    Map<String, dynamic> body,
    List<File> files,
  ) async {
    int index = 0;

    final formData = FormData.fromMap(body);
    files?.forEach((file) async {
      final mFile = await _fileHelper.convertFileToMultipartFile(file);
      formData.files.add(MapEntry('file$index', mFile));
      index++;
    });

    final data = await postHttp(route, formData);

    return data;
  }

  @override
  Future<File> downloadFile(String fileUrl) async {
    Response response;

    final file = await _fileHelper.getFileFromUrl(fileUrl);

    try {
      response = await _dio.download(
        fileUrl,
        file.path,
        onReceiveProgress: network_utils.showLoadingProgress,
      );
    } on DioError catch (e) {
      Logger.e('HttpService: Failed to download file ${e.message}');
      throw NetworkException(e.message);
    }

    network_utils.checkForNetworkExceptions(response);

    return file;
  }

  @override
  void dispose() {
    _dio.clear();
    _dio.close(force: true);
  }

  

  @override
  Future<dynamic> getHttpWithHead(
      String route, String key) async {
    Logger.d('Sending GET to $route with $key');
    var completer = new Completer();
    var contents = new StringBuffer();

    try {
      client.getUrl(Uri.parse(route)).then((HttpClientRequest request) {
        request.headers.add("Authorization",
            "Bearer $key",
            preserveHeaderCase: true);
        request.headers.add("Content-Type", "application/json");
        Logger.d(request.headers.value(HttpHeaders.userAgentHeader));

        return request.close();
      }).then((HttpClientResponse response) {
        // Process the response.
        response.transform(utf8.decoder).listen((data) {
          contents.write(data);
          
        }, onDone: () => completer.complete(contents.toString()));
      });
    } catch (e) {
      throw NetworkException(e);
    }

    //network_utils.checkForNetworkExceptions(response);

    // For this specific API its decodes json for us
    return completer.future;
  }

  @override
  Future getHttpWithHeader(String route, Map<String, dynamic>  header) async {
     Response response;

    Logger.d('Sending GET to $route with $header');

    try {
      final fullRoute = '$route';
      response = await _dio.get(
        fullRoute,
        options: Options(
          headers: header,
        ),
      );
      print(response.data);
    } on DioError catch (e) {
      Logger.e('HttpService: Failed to GET ${e.message}');
      throw NetworkException(e.message);
    }

    network_utils.checkForNetworkExceptions(response);

    // For this specific API its decodes json for us
    return response.data;
  }
}
