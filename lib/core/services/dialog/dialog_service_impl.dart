import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_provider_architecture_template/core/models/alert_request/alert_request.dart';
import 'package:my_provider_architecture_template/core/models/alert_request/confirm_alert_request.dart';
import 'package:my_provider_architecture_template/core/models/alert_response/alert_response.dart';
import 'package:my_provider_architecture_template/core/models/alert_response/confirm_alert_response.dart';
import 'package:my_provider_architecture_template/core/services/dialog/dialog_service.dart';
import 'package:my_provider_architecture_template/core/services/navigation/navigation_service.dart';
import 'package:my_provider_architecture_template/ui/widgets/dialogs/confirm_dialog.dart';

import '../../../locator.dart';

/// A service that is responsible for returning future dialogs
class DialogServiceImpl implements DialogService {
  Completer<AlertResponse> _dialogCompleter;

  @override
  Future<AlertResponse> requestDialog(AlertRequest request) {
    _dialogCompleter = Completer<AlertResponse>();

    if (request is ConfirmAlertRequest) {
      _showConfirmAlert(request);
    }

    return _dialogCompleter.future;
  }

  @override
  void completeDialog(AlertResponse response) {
    locator<NavigationService>().pop();
    _dialogCompleter.complete(response);
    _dialogCompleter = null;
  }

  void _showConfirmAlert(ConfirmAlertRequest request) {
    //final local = AppLocalizations.of(Get.overlayContext);

    showDialog(
        context: Get.overlayContext,
        builder: (context) => ConfirmDialog(
              title: request.title,
              description: request.description,
              buttonTitle: request.buttonTitle,
              onConfirmed: () {
                if (!_dialogCompleter.isCompleted) {
                  completeDialog(
                      ConfirmAlertResponse((a) => a..confirmed = true));
                }
              },
              onDenied: () {
                if (!_dialogCompleter.isCompleted) {
                  completeDialog(
                      ConfirmAlertResponse((a) => a..confirmed = false));
                }
              },
            ));
  }
}
