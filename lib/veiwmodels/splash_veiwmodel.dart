import 'package:my_provider_architecture_template/core/constant/view_routes.dart';
import 'package:my_provider_architecture_template/core/services/key_storage/key_storage_service.dart';
import 'package:my_provider_architecture_template/core/services/navigation/navigation_service.dart';
import 'package:my_provider_architecture_template/locator.dart';
import 'package:my_provider_architecture_template/veiwmodels/base_view_model.dart';

class SplashViewModel extends BaseViewModel {
  final keys = locator<KeyStorageService>();
  final nav = locator<NavigationService>();

  bool get isFirstTime => keys.isFirstTime;

  Future<void> init() async {
    await openNewsFeed();
  }
  

  set isFirsTime(bool value) {
    keys.isFirstTime = value;
  }

  Future<void> openNewsFeed() async {
    await Future.delayed(Duration(seconds: 3));
    await nav.popAllAndPushNamed(ViewRoutes.newsfeed);
  }


}
