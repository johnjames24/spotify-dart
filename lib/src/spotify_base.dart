// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify;

abstract class SpotifyApiBase {
  static const String _baseUrl = 'https://api.spotify.com';
  static const String _tokenUrl = 'https://accounts.spotify.com/api/token';
  static const String _authorizationUrl =
      'https://accounts.spotify.com/authorize';

  FutureOr<http.BaseClient> _client;

  Artists _artists;
  Artists get artists => _artists;

  Albums _albums;
  Albums get albums => _albums;

  Tracks _tracks;
  Tracks get tracks => _tracks;

  Playlists _playlists;
  Playlists get playlists => _playlists;

  RecommendationsEndpoint _recommendations;
  RecommendationsEndpoint get recommendations => _recommendations;

  Users _users;
  Users get users => _users;

  Search _search;
  Search get search => _search;

  AudioFeatures _audioFeatures;
  AudioFeatures get audioFeatures => _audioFeatures;

  Categories _categories;
  Categories get categories => _categories;

  Me _me;
  Me get me => _me; 

  SpotifyApiBase.fromClient(FutureOr<http.BaseClient> client) {
    _client = client;

    _artists = Artists(this);
    _albums = Albums(this);
    _tracks = Tracks(this);
    _playlists = Playlists(this);
    _recommendations = RecommendationsEndpoint(this);
    _me = Me(this);
    _users = Users(this, _me);
    _search = Search(this);
    _audioFeatures = AudioFeatures(this);
    _categories = Categories(this);
  }

  SpotifyApiBase.fromToken() : this.fromClient(TokenCredentialClient());

  SpotifyApiBase(SpotifyApiCredentials credentials,
      [http.BaseClient httpClient])
      : this.fromClient(oauth2.clientCredentialsGrant(
            Uri.parse(SpotifyApiBase._tokenUrl),
            credentials.clientId,
            credentials.clientSecret,
            httpClient: httpClient));

  SpotifyApiBase.fromAuthCodeGrant(
      oauth2.AuthorizationCodeGrant grant, String responseUri)
      : this.fromClient(grant.handleAuthorizationResponse(
            Uri.parse(responseUri).queryParameters));

  static oauth2.AuthorizationCodeGrant authorizationCodeGrant(
      SpotifyApiCredentials credentials, http.BaseClient httpClient) {
    return oauth2.AuthorizationCodeGrant(
        credentials.clientId,
        Uri.parse(SpotifyApiBase._authorizationUrl),
        Uri.parse(SpotifyApiBase._tokenUrl),
        secret: credentials.clientSecret,
        httpClient: httpClient);
  }

  Future<String> _get(String path) {
    return _getImpl('${_baseUrl}/$path', const {});
  }

  Future<String> _getAlien(String path) {
    return _getImpl(path, const {});
  }

  Future<String> _post(String path, [String body = '']) {
    return _postImpl('${_baseUrl}/$path', const {}, body);
  }

  Future<String> _delete(String path, [String body = '']) {
    return _deleteImpl('${_baseUrl}/$path', const {}, body);
  }

  Future<String> _put(String path, [String body = '']) {
    return _putImpl('${_baseUrl}/$path', const {}, body);
  }

  Future<String> _getImpl(String url, Map<String, String> headers) async {
    final response = await (await _client).get(url, headers: headers);
    return handleErrors(response);
  }

  Future<String> _postImpl(
      String url, Map<String, String> headers, dynamic body) async {
    var response =
        await (await _client).post(url, headers: headers, body: body);
    return handleErrors(response);
  }

  Future<String> _deleteImpl(
      String url, Map<String, String> headers, body) async {
    final request = http.Request('DELETE', Uri.parse(url));
    request.headers.addAll(headers);
    request.body = body;
    final response =
        await http.Response.fromStream(await (await _client).send(request));
    return handleErrors(response);
  }

  Future<String> _putImpl(
      String url, Map<String, String> headers, dynamic body) async {
    var response = await (await _client).put(url, headers: headers, body: body);
    return handleErrors(response);
  }

  Future<SpotifyApiCredentials> getCredentials() async {
    return await SpotifyApiCredentials._fromClient(await _client);
  }

  String handleErrors(http.Response response) {
    final responseBody = utf8.decode(response.bodyBytes);
    if (response.statusCode >= 400) {
      var jsonMap = json.decode(responseBody);
      throw SpotifyException.fromSpotify(
        SpotifyError.fromJson(jsonMap['error']),
      );
    }
    return responseBody;
  }
}
