import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wallpaperapp/model/wallpaper.dart';
import 'package:wallpaperapp/view/utils/constants/const.dart';

class RestApiService {
  Future<List<dynamic>> getJsonDataFromApi(String url) async {
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);
    var parsedData = jsonDecode(response.body) as List<dynamic>;
    return parsedData;
  }

  Future<List<Wallpaper>> convertJsonToObject(int pagenumber) async {
    List<dynamic> list = await getJsonDataFromApi(api +"&$pagenumber");
    List<Wallpaper> wallpapers = [];
    for (var wallpaper in list){
      wallpapers.add(Wallpaper.fromJson(wallpaper));
    }
    return wallpapers;
  }
}