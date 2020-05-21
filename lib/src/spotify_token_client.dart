part of spotify;

class TokenCredentialClient extends http.BaseClient {
  String _token = '';
  int endTime;
  final http.Client _inner = http.Client();

  Future<String> refreshToken() async {
    var response = await http.get(
        'https://open.spotify.com/get_access_token?reason=transport&productType=web_player');
    Map<String, dynamic> data = jsonDecode(response.body);
    endTime = data['accessTokenExpirationTimestampMs'];

    return data['accessToken'];
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_token == '') _token = await refreshToken();

    if (endTime < DateTime.now().millisecondsSinceEpoch){
      _token = await refreshToken();
    }

    request.headers['Authorization'] = 'Bearer $_token';
    return _inner.send(request);
  }
}