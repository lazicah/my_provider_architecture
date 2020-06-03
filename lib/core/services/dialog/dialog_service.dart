
import 'package:my_provider_architecture_template/core/models/alert_request/alert_request.dart';
import 'package:my_provider_architecture_template/core/models/alert_response/alert_response.dart';

abstract class DialogService {
  Future<AlertResponse> requestDialog(AlertRequest alertRequest);

  void completeDialog(AlertResponse response);
}
