import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    int page = 1;
    bool hasNext = true;

    while (hasNext) {
      final response = await http.get(
        Uri.parse('https://rickandmortyapi.com/api/character?page=$page'),
      );
      final Map<String, dynamic> data = jsonDecode(response.body);
      final List<dynamic> results = data['results'];

      for (var character in results) {
        print(character['name']);
      }

      hasNext = data['info']['next'] != null;
      page++;
    }
  } catch (e) {
    print('error caught: $e');
  }
}
