import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:my_provider_architecture_template/core/data_sources/news/remote_datasource.dart';
import 'package:my_provider_architecture_template/core/repositories/news_repository.dart';
import 'package:my_provider_architecture_template/core/services/location/location_service.dart';
import 'package:my_provider_architecture_template/core/services/navigation/navigation_service_impl.dart';
import 'package:my_provider_architecture_template/core/utils/file_helper.dart';

import 'core/services/connectivity/connectivity_service.dart';
import 'core/services/connectivity/connectivity_service_impl.dart';
import 'core/services/dialog/dialog_service.dart';
import 'core/services/dialog/dialog_service_impl.dart';
import 'core/services/hardware_info/hardware_info_service.dart';
import 'core/services/hardware_info/hardware_info_service_impl.dart';
import 'core/services/http/http_service.dart';
import 'core/services/http/http_service_impl.dart';
import 'core/services/key_storage/key_storage_impl.dart';
import 'core/services/key_storage/key_storage_service.dart';
import 'core/services/location/location_service_impl.dart';
import 'core/services/navigation/navigation_service.dart';
import 'core/services/snackbar/snack_bar_service.dart';
import 'core/services/snackbar/snack_bar_service_impl.dart';

GetIt locator = GetIt.instance;

/// Setup function that is run before the App is run.
///   - Sets up singletons that can be called from anywhere
/// in the app by using locator<Service>() call.
///   - Also sets up factor methods for view models.
Future<void> setupLocator({bool test = false}) async {
  // Services
  locator.registerLazySingleton<NavigationService>(
    () => NavigationServiceImpl(),
  );
  locator.registerLazySingleton<HardwareInfoService>(
    () => HardwareInfoServiceImpl(),
  );
  locator.registerLazySingleton<ConnectivityService>(
    () => ConnectivityServiceImpl(),
  );

  locator.registerLazySingleton<LocationService>(
    () => LocationServiceImpl(),
  );

  locator.registerLazySingleton<DialogService>(() => DialogServiceImpl());
  locator.registerLazySingleton<SnackBarService>(() => SnackBarServiceImpl());

  locator.registerLazySingleton<HttpService>(() => HttpServiceImpl());

  // Data sources
  locator.registerLazySingleton<NewsRemoteDataSource>(
      () => NewsRemoteDataSourceImpl());

  // Repositories
  locator.registerLazySingleton<NewsRepo>(() => NewsRepoImpl());

  if (!test) {
    await _setupSharedPreferences();
  }

  // Utils
  locator.registerLazySingleton<FileHelper>(() => FileHelperImpl());

  // External
  locator.registerLazySingleton<HiveInterface>(() => Hive);
}

Future<void> _setupSharedPreferences() async {
  final instance = await KeyStorageServiceImpl.getInstance();
  locator.registerLazySingleton<KeyStorageService>(() => instance);
}
