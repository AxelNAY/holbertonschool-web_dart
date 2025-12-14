import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final url = Uri.parse("https://rickandmortyapi.com/api/character");

    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw "Request failed with status: ${response.statusCode}";
    }

    final data = json.decode(response.body);

    List characters = data["results"];

    for (var character in characters) {
      print(character["name"]);
    }
  } catch (e) {
    print("error caught: $e");
  }
}
