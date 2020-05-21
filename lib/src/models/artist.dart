// Copyright (c) 2017, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

@HiveType(typeId: 11)
@JsonSerializable()
class Artist extends Object implements ArtistSimple {
  Artist();

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ArtistToJson(this);

  /// Known external URLs for this artist.
  @HiveField(0)
  @JsonKey(name: 'external_urls')
  @override
  ExternalUrls externalUrls;

  /// A link to the Web API endpoint providing full details of the artist.
  @HiveField(1)
  @override
  String href;

  /// The Spotify ID for the artist.
  @HiveField(2)
  @override
  String id;

  /// The name of the artist
  @HiveField(3)
  @override
  String name;

  /// The object type: "artist"
  @HiveField(4)
  @override
  String type;

  /// The Spotify URI for the artist.  
  @HiveField(5)
  @override
  String uri;

  /// Information about the followers of the artist.
  @HiveField(6)
  Followers followers;

  /// A list of the genres the artist is associated with.
  /// For example:
  ///    "Prog Rock", "Post-Grunge".
  ///
  /// (If not yet classified, the array is empty.)
  @HiveField(7)
  List<String> genres;

  /// Images of the artist in various sizes, widest first.
  @HiveField(8)
  List<Image> images;

  /// The popularity of the artist. The value will be between 0 and 100, with 100
  /// being the most popular. The artist's popularity is calculated from the
  /// popularity of all the artist's tracks.
  @HiveField(9)
  int popularity;
}

@JsonSerializable()
class ArtistSimple extends Object {
  ArtistSimple();

  factory ArtistSimple.fromJson(Map<String, dynamic> json) =>
      _$ArtistSimpleFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistSimpleToJson(this);

  /// Known external URLs for this artist.
  @HiveField(0)
  @JsonKey(name: 'external_urls')
  ExternalUrls externalUrls;

  /// A link to the Web API endpoint providing full details of the artist.
  @HiveField(1)
  String href;

  /// The Spotify ID for the artist.
  @HiveField(2)
  String id;

  /// The name of the artist
  @HiveField(3)
  String name;

  /// The object type: "artist"
  @HiveField(4)
  String type;

  /// The Spotify URI for the artist.
  @HiveField(5)
  String uri;
}
