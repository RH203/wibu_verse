class HelperValidator {
  // Validator untuk memastikan panjang minimal 8 karakter
  static String? validateMinLength8(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field cannot be empty';
    }
    if (value.length < 8) {
      return 'Must be at least 8 characters long';
    }
    return null;
  }

  // Validator untuk email yang valid
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value)) {
      return 'Invalid email format';
    }
    return null;
  }
}
