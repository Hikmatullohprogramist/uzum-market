import 'package:http/http.dart' as http;
import 'package:uzum_clone/data/product_model.dart';

class getAllProducts {
  Future<List<Products>?> getProducts() async {
    var client = http.Client();
    var uri = Uri.parse("https://fakestoreapi.com/products");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return productsFromJson(json);
    }
  }
}
