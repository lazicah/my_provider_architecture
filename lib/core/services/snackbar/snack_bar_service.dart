
import 'package:my_provider_architecture_template/core/models/snack_bar_request/snack_bar_request.dart';
import 'package:my_provider_architecture_template/core/models/snack_bar_response/snack_bar_response.dart';

abstract class SnackBarService {
  Future<SnackBarResponse> showSnackBar(SnackBarRequest alertRequest);

  void completeSnackBar(SnackBarResponse response);
}
