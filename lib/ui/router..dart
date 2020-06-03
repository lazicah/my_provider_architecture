import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_provider_architecture_template/core/constant/view_routes.dart';
import 'package:my_provider_architecture_template/ui/screens/news_screen.dart';

import '../main.dart';

/// Class that generates routes for the application
///   - Routes are generated by the list of routes in the app
///   - Routes can also require parameters. e.g. `PostDetailView(post: post)`
class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return GetRouteBase(
      settings: RouteSettings(name: settings.name),
      page: _generateView(settings),
      fullscreenDialog: _fullScreenDialogs.contains(settings.name),
    );
  }

  static Widget _generateView(RouteSettings settings) {
    switch (settings.name) {

      // NewsFeed
      case ViewRoutes.newsfeed:
        return NewsScreen();

      default:
        return Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        );
    }
  }

  // Add routes that should behave as fullScreenDialogs
  static final _fullScreenDialogs = [
    // Routes.route_1,
    // Routes.route_2,
  ];
}
