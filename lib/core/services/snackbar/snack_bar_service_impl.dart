import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_provider_architecture_template/core/models/snack_bar_request/confirm_snack_bar_request.dart';
import 'package:my_provider_architecture_template/core/models/snack_bar_request/snack_bar_request.dart';
import 'package:my_provider_architecture_template/core/models/snack_bar_response/confirm_snack_bar_response.dart';
import 'package:my_provider_architecture_template/core/models/snack_bar_response/snack_bar_response.dart';
import 'package:my_provider_architecture_template/core/services/navigation/navigation_service.dart';
import 'package:my_provider_architecture_template/core/services/snackbar/snack_bar_service.dart';

import '../../../locator.dart';

/// A service that is responsible for returning future snackbar
class SnackBarServiceImpl implements SnackBarService {
  Completer<SnackBarResponse> _snackBarCompleter;
  @override
  Future<SnackBarResponse> showSnackBar(SnackBarRequest request) {
    _snackBarCompleter = Completer<SnackBarResponse>();

    if (request is ConfirmSnackBarRequest) {
      _showConfirmSnackBar(request);
    }

    return _snackBarCompleter.future;
  }

  @override
  void completeSnackBar(SnackBarResponse response) {
    locator<NavigationService>().pop();
    _snackBarCompleter.complete(response);
    _snackBarCompleter = null;
  }

  void _showConfirmSnackBar(ConfirmSnackBarRequest request) {
    //final local = AppLocalizations.of(Get.overlayContext);
    final style = TextStyle(color: Theme.of(Get.overlayContext).accentColor);

    GetBar(
      message: request.message,
      margin: const EdgeInsets.all(8),
      dismissDirection: SnackDismissDirection.HORIZONTAL,
      borderRadius: 8,
      mainButton: FlatButton(
        child: Text(
          request.buttonText,
          style: style,
        ),
        onPressed: () {
          completeSnackBar(ConfirmSnackBarResponse((a) => a..confirmed = true));
          if (request.onPressed != null) {
            request.onPressed();
          }
        },
      ),
    )..show();
  }
}
