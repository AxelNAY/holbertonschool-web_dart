import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String jsonString = await fetchUserData();
  Map<String, dynamic> user = json.decode(jsonString);
  return user['id'];
}
