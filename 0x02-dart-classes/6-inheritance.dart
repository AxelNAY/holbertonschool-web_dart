class Password {
    String _password = '';

    Password({required String password}) : _password = password;

    String get password => _password;
    set password(String value) => _password = value;

    bool isValid() {
        if (_password.length < 8 || _password.length > 16) return false;
        if (!_password.contains(RegExp(r'[A-Z]'))) return false;
        if (!_password.contains(RegExp(r'[a-z]'))) return false;
        if (!_password.contains(RegExp(r'[0-9]'))) return false;
        return true;
    }

    @override
    String toString() {
        return 'Your Password is: $_password';
    }
}

class User extends Password {
    int id;
    String name;
    int age;
    double height;
    String? _user_password;

    User({
        required this.id,
        required this.name,
        required this.age,
        required this.height,
        String? user_password,
    }) : _user_password = user_password,
         super(password: user_password ?? '');

    String? get user_password => _user_password;
    set user_password(String? value) {
        _user_password = value;
        password = value ?? '';
    }

    static User fromJson(Map<dynamic, dynamic> userJson) {
        return User(
            id: userJson['id'],
            name: userJson['name'],
            age: userJson['age'],
            height: userJson['height'],
            user_password: userJson['user_password'],
        );
    }

    Map<String, dynamic> toJson() {
        return {'id': id, 'name': name, 'age': age, 'height': height};
    }

    @override
    String toString() {
        return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
    }
}
