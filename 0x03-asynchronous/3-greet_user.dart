import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String data = await fetchUserData();
    Map<String, dynamic> user = json.decode(data);
    return "Hello ${user['username']}";
  } catch (e) {
    return "error caught: $e";
  }
}

Future<String> loginUser() async {
  try {
    bool isValid = await checkCredentials();
    print("There is a user: $isValid");

    if (isValid) {
      return await greetUser();
    } else {
      return "Wrong credentials";
    }
  } catch (e) {
    return "error caught: $e";
  }
}
