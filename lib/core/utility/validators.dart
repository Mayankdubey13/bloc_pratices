class Validators {

  static bool isEmailValid(String email) {
    // Regular expression pattern for a valid email address
    const pattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
    // Create a regular expression object
    final regex = RegExp(pattern);
    // Use the `hasMatch` method to check if the email matches the pattern
    return regex.hasMatch(email);
  }

  static bool isValidMobileNumber(String mobileNumber) {
    return RegExp(r'^[0-9]{10}$').hasMatch(mobileNumber);
  }

  // We can give only alphabet
  static String? validateName(String? val) {
    var value = val ?? '';
    final nameRegExp = RegExp(AppRegex.nameRegex);
    if (value.isEmpty) {
      return 'Name is Required';
    } else if (!nameRegExp.hasMatch(value)) {
      return 'Invalid Name';
    }
    return null;
  }

  /// ------------------ Check Value is Empty ------------------

  static String? isEmpty(String? text) {
    if (text!.isEmpty) {
      return 'Required!';
    }
    return null;
  }

  /// ------------------ Mobile Number  Validation ------------------

  static String? mobileNoValidation(String? number) {
    if (number?.isEmpty ?? false) {
      return 'Enter Mobile Number';
    }
    if (number!.isNotEmpty) {
      if (number.length < 10) {
        return 'Invalid Mobile Number';
      } else if (!RegExp(AppRegex.mobileRegex).hasMatch(number.trim())) {
        return 'Invalid Mobile Number';
      }
    }
    return null;
  }
}


class AppRegex {
  /// email validation pattern
  static const String emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  /// password validation pattern
  static const String passwordRegex =
      r'^((?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,15}$)';

  /// name validation pattern
  static const String nameRegex =
      r"^\s*([A-Za-z]{1,}([\.,] |[-']|| ))+[A-Za-z]+\.?\s*$";

  /// mobile validation pattern
  static const String mobileRegex = r'(^(?:[+0]9)?[0-9]{9,11}$)';

  // URL validation pattern
  static const String urlRegex =
      r'(https?|http)://([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?';

  // Website URL validation pattern
  static const String websiteUrlRegex =
      r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+';
}
