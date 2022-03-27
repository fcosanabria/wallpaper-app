import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wallpaperapp/view/utils/constants/const.dart';

class RestApiService {
  Future<List<dynamic>> getJsonDataFromApi(String url) async {
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);
    var parsedData = jsonDecode(response.body) as List<dynamic>;
    return parsedData;
  }

  void convertJsonToObject(int pagenumber) {
    getJsonDataFromApi(api +"");
  }


}