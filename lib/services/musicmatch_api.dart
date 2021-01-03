import 'package:test_flutter_sprint_technology/models/track.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;

class MusixMatchApi {
  final String _rootURL = "https://api.musixmatch.com/ws/1.1/";
  final String _token = "f5c709021d3c6cde957841bc24a0cac8";

  String _buildRequestURL(String route, Map<String, String> parameters) {
    String url = "$_rootURL/$route?apikey=$_token";
    parameters.forEach((key, value) => url += "&$key=$value");
    return url;
  }

  Future<List<dynamic>> _performRequest(String request, String key) async {
    final result = await http.get(request);
    return json.decode(result.body)["message"]["body"][key];
  }

  Future<List<Track>> searchForTrack(String keywords) async {
    var list = await _performRequest(_buildRequestURL("track.search", {
      "q_track_artist": keywords,
      "page_size": "10",
      "page": "1",
    }), "track_list");
    return list.map((wsTrack) => Track.fromJson(wsTrack["track"])).toList();
  }
}