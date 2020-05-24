import 'dart:convert';
import 'dart:io';
import 'package:spotify/spotify.dart';

void main(){
  var file = File('test/data/extended.json');
  var ae = ArtistExtended.fromJson(jsonDecode(file.readAsStringSync()));

  print(ae.bio);
}

// void main() async {
//   var spotifyApi = SpotifyApi.fromToken();

//   // for url https://spclient.wg.spotify.com/open-backend-2/v1/artists/
//   var artistExtended = await spotifyApi.artists.getArtistExtendedDetails('6qqNVTkY8uBg9cP3Jd7DAH');
//   saveJson('test/data/extended.json', jsonEncode(artistExtended.toJson()));
// }

///download json to a folder
void saveJson(String url, String json){
  var file = File(url);
  file.writeAsStringSync(json);
}
