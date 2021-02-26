import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:music_lyrics_flutter_project/model/SongHeaderModel.dart';

const String url = 'https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey=2d782bc7a52a41ba2fc1ef05b9cf40d7';

Future<List<SongModel>> getSongHeaderModelData()async
{
  var response = await http.get(url);
  return (jsonDecode(response.body)['track_list']as List).map((data) => SongModel.fromJson(data)).toList();
}