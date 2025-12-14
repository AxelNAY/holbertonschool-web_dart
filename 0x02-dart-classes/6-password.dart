class Password {
  String _password;

  Password({required String password}) : _password = password;

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    final hasUppercase = RegExp(r'[A-Z]').hasMatch(_password);
    final hasLowercase = RegExp(r'[a-z]').hasMatch(_password);
    final hasNumber = RegExp(r'[0-9]').hasMatch(_password);

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
