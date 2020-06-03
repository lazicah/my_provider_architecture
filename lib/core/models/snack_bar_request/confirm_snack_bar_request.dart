import 'package:built_value/built_value.dart';
import 'package:my_provider_architecture_template/core/models/snack_bar_request/snack_bar_request.dart';


part 'confirm_snack_bar_request.g.dart';

abstract class ConfirmSnackBarRequest extends SnackBarRequest
    implements Built<ConfirmSnackBarRequest, ConfirmSnackBarRequestBuilder> {
  String get message;

  String get buttonText;

  @nullable
  void Function() get onPressed;

  ConfirmSnackBarRequest._();
  factory ConfirmSnackBarRequest(
          [void Function(ConfirmSnackBarRequestBuilder) updates]) =
      _$ConfirmSnackBarRequest;
}
