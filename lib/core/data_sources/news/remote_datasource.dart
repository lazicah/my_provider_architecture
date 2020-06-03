import 'dart:convert';

import 'package:my_provider_architecture_template/core/constant/api_routes.dart';
import 'package:my_provider_architecture_template/core/models/news/news.dart';
import 'package:my_provider_architecture_template/core/models/serializers.dart';
import 'package:my_provider_architecture_template/core/services/http/http_service.dart';
import 'package:my_provider_architecture_template/locator.dart';

abstract class NewsRemoteDataSource {
  Future<List<NewsData>> fetchNews();
}

class NewsRemoteDataSourceImpl extends NewsRemoteDataSource {
  final httpservice = locator<HttpService>();

  @override
  Future<List<NewsData>> fetchNews() async {
    final response = await httpservice.getHttpWithHeader(
        ApiRoutes.base_url, ApiRoutes.headers);

    print(response);

    List<NewsData> news = response.map<NewsData>((e) =>
        serializers.deserializeWith(NewsData.serializer, jsonDecode(response)));
    return news;
  }
}
