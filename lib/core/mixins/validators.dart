

/// Class of validation functions that the app will use
///   - This class should be used as a mixin using the `with` keyword
class Validators {
  final phoneNumberRegExp = RegExp(
      r'^([0-9]( |-)?)?(\(?[0-9]{3}\)?|[0-9]{3})( |-)?([0-9]{3}( |-)?[0-9]{4}|[a-zA-Z0-9]{7})$');
  final emailRegExp = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  final zipCodeRegExp = RegExp(r'^[0-9]{5}(?:-[0-9]{4})?$');

  String validateEmail(String value) {
    if (!emailRegExp.hasMatch(value.trim())) {
      return "invalid email";
    }
    return null;
  }

  String validatePhoneNumber(String value) {
    if (!phoneNumberRegExp.hasMatch(value.trim())) {
      return "invalide phone number";
    }
    return null;
  }

  String validateZip(String value) {
    if (!zipCodeRegExp.hasMatch(value.trim())) {
      return "invalid zip code";
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.trim().isEmpty) {
      return "password field is empty";
    } else if (value.length <= 6) {
      return "password is too shortt";
    }
    return null;
  }
}
