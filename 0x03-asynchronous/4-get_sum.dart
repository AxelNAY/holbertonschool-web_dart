import '4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async {
  try {
    Map<String, dynamic> userData =
        jsonDecode(await fetchUserData());

    String userId = userData['id'].toString();

    List<dynamic> userOrders =
        jsonDecode(await fetchUserOrders(userId));

    double total = 0.0;

    for (var product in userOrders) {
      total += double.parse(
        await fetchProductPrice(product),
      );
    }

    return total;
  } catch (error) {
    return -1;
  }
}
