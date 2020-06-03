import 'package:my_provider_architecture_template/core/data_sources/news/remote_datasource.dart';
import 'package:my_provider_architecture_template/core/exceptions/network_exception.dart';
import 'package:my_provider_architecture_template/core/exceptions/repository_exception.dart';
import 'package:my_provider_architecture_template/core/models/news/news.dart';
import 'package:my_provider_architecture_template/core/services/connectivity/connectivity_service.dart';
import 'package:my_provider_architecture_template/core/utils/logger.dart';
import 'package:my_provider_architecture_template/locator.dart';

abstract class NewsRepo {
  Future<List<NewsData>> fetchNews();
  
}

class NewsRepoImpl extends NewsRepo{
  final remoteData = locator<NewsRemoteDataSource>();
  final connectivity = locator<ConnectivityService>();

  @override
  Future<List<NewsData>> fetchNews() async {
    try {
      if (await connectivity.isConnected) {
        final news = await remoteData.fetchNews();
        print(news);
        return news;
      }
    } on NetworkException catch (e) {
      Logger.d(e.message);
      throw RepositoryException(e.message);
    }
  }

}