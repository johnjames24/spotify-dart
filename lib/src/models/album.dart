// Copyright (c) 2017, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

@HiveType(typeId: 0)
@JsonSerializable()
class Album extends AlbumSimple {
  Album();

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AlbumToJson(this);

  /// The copyright statements of the album.
  @HiveField(10)
  List<Copyright> copyrights;

  /// Known external IDs for the album.
  @HiveField(11)
  @JsonKey(name: 'external_ids')
  ExternalIds externalIds;

  /// A list of the genres the artist is associated with.
  /// For example:
  ///     "Prog Rock", "Post-Grunge".
  ///
  /// (If not yet classified, the array is empty.)
  @HiveField(12)
  List<String> genres;

  /// The label for the album.
  @HiveField(13)
  String label;

  /// The popularity of the artist. The value will be between 0 and 100, with 100
  /// being the most popular. The artist's popularity is calculated from the
  /// popularity of all the artist's tracks.
  @HiveField(14)
  int popularity;

  /// The date the album was first released, for example "1981-12-15".
  /// Depending on the precision, it might be shown as "1981" or "1981-12".
  @HiveField(15)
  @JsonKey(name: 'release_date')
  String releaseDate;

  /// The precision with which release_date value is known:
  ///     "year", "month", or "day".
  @HiveField(16)
  @JsonKey(name: 'release_date_precision')
  String releaseDatePrecision;
}

@HiveType(typeId: 1)
@JsonSerializable()
class AlbumSimple extends Object {
  AlbumSimple();

  factory AlbumSimple.fromJson(Map<String, dynamic> json) => _$AlbumSimpleFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumSimpleToJson(this);

  /// The type of the album: one of "album", "single", or "compilation".
  @HiveField(0)
  @JsonKey(name: 'album_type')
  String albumType;

  /// The artists of the album. Each artist object includes a link in href to
  /// more detailed information about the artist.
  @HiveField(1)
  List<ArtistSimple> artists;

  /// The markets in which the album is available: ISO 3166-1 alpha-2 country
  /// codes. Note that an album is considered available in a market when at least
  /// 1 of its tracks is available in that market.
  @HiveField(2)
  @JsonKey(name: 'available_markets')
  List<String> availableMarkets;

  /// Known external URLs for this album.
  @HiveField(3)
  @JsonKey(name: 'external_urls')
  ExternalUrls externalUrls;

  /// A link to the Web API endpoint providing full details of the album.
  @HiveField(4)
  String href;

  /// The Spotify ID for the album.
  @HiveField(5)
  String id;

  /// The cover art for the album in various sizes, widest first.
  @HiveField(6)
  List<Image> images;

  /// The name of the album. In case of an album takedown, the value may be an
  /// empty string.
  @HiveField(7)
  String name;

  /// The object type: "album"
  @HiveField(8)
  String type;

  /// The Spotify URI for the album.
  @HiveField(9)
  String uri;
}

@HiveType(typeId: 2)
@JsonSerializable()
class Copyright extends Object {
  Copyright();
  factory Copyright.fromJson(Map<String, dynamic> json) =>
      _$CopyrightFromJson(json);

  Map<String, dynamic> toJson() => _$CopyrightToJson(this);

  /// The copyright text for this album.
  @HiveField(0)
  String text;

  /// The type of copyright:
  ///     C = the copyright
  ///     P = the sound recording (performance) copyright.
  @HiveField(1)
  String type;
}
