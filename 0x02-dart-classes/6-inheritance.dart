class Password {
  String? _password;

  Password({String? password}) : _password = password ?? "";

  String get password => _password ?? "";

  set password(String value) {
    _password = value;
  }

  bool isValid() {
    final pwd = _password ?? "";

    if (pwd.length < 8 || pwd.length > 16) {
      return false;
    }

    final hasUppercase = RegExp(r'[A-Z]').hasMatch(pwd);
    final hasLowercase = RegExp(r'[a-z]').hasMatch(pwd);
    final hasNumber = RegExp(r'[0-9]').hasMatch(pwd);

    return hasUppercase && hasLowercase && hasNumber;
  }
}

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;

  String? _userPassword;

  User({
    this.id,
    this.name,
    this.age,
    this.height,
    String? user_password,
  })  : _userPassword = user_password,
        super(password: user_password ?? "");

  String get user_password => _userPassword ?? "";

  set user_password(String value) {
    _userPassword = value;
    password = value;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id ?? 0,
      'name': name ?? "",
      'age': age ?? 0,
      'height': height ?? 0.0,
    };
  }

  static User fromJson(Map<dynamic, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      height: json['height'],
      user_password: json['user_password'],
    );
  }

  @override
  String toString() {
    return 'User(id : ${id ?? 0} ,name: ${name ?? ""}, age: ${age ?? 0}, height: ${height ?? 0.0}, Password: ${isValid()})';
  }
}
