import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

const LISTING_URL = "https://oa.renocompass.ca/api/web/msl/listings";

class DataServices {
  static Future fetchListings() async {
    final res = await http.get(LISTING_URL);

    if (res.statusCode == 200) {
      return json.decode(res.body);
    } else {
      throw Exception('Failed to load listings');
    }
  }
}
