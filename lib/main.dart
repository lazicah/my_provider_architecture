import 'package:flutter/material.dart';
import 'package:my_provider_architecture_template/core/managers/core_manager.dart';
import 'package:my_provider_architecture_template/core/services/key_storage/key_storage_service.dart';
import 'package:my_provider_architecture_template/core/services/navigation/navigation_service.dart';
import 'package:my_provider_architecture_template/core/utils/logger.dart';
import 'package:my_provider_architecture_template/locator.dart';
import 'package:my_provider_architecture_template/provider_setup.dart';
import 'package:my_provider_architecture_template/ui/router..dart';
import 'package:my_provider_architecture_template/ui/screens/splash_screen.dart';
import 'package:my_provider_architecture_template/ui/ui_helper.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLogger();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final navigationService = locator<NavigationService>();
  final keys = locator<KeyStorageService>();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: CoreManager(
        child: Consumer<AppStateNotifier>(
          builder:
              (BuildContext context, AppStateNotifier value, Widget child) =>
                  MaterialApp(
            title: Constants.appName,
            darkTheme: Constants.darkTheme,
            theme: Constants.lightTheme,
            themeMode: keys.isDarkMOde ? ThemeMode.dark : ThemeMode.light,
            navigatorKey: navigationService.navigatorKey,
            onGenerateRoute: Router.generateRoute,
            home: SplashScreen(),
          ),
        ),
      ),
    );
  }
}
