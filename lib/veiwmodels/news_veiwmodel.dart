import 'package:my_provider_architecture_template/core/enums/view_state.dart';
import 'package:my_provider_architecture_template/core/models/news/news.dart';
import 'package:my_provider_architecture_template/core/repositories/news_repository.dart';
import 'package:my_provider_architecture_template/locator.dart';
import 'package:my_provider_architecture_template/veiwmodels/base_view_model.dart';

class NewsViewModel extends BaseViewModel {
  final _repository = locator<NewsRepo>();
  List<NewsData> _list = [];
  List<NewsData> get list => _list;

  Future<void> init() async {
    await _attemptFetchData();
  }

  Future<List<NewsData>> _attemptFetchData() async {
    setState(ViewState.Busy);

    try {
      final data = await _repository.fetchNews();
      _list = data.toList();
      _checkIfDataIsEmpty();
    } catch (e) {}
  }

  void _checkIfDataIsEmpty() {
    _list.isEmpty
        ? setState(ViewState.NoDataAvailable)
        : setState(ViewState.Idle);
  }
}
