// Copyright (c) 2017, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

@HiveType(typeId: 30)
@JsonSerializable()
class Track extends Object implements TrackSimple {
  Track();

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TrackToJson(this);

  /// The album on which the track appears. The album object includes a link
  /// in [href] to full information about the album.  
  @HiveField(0)
  AlbumSimple album;

  /// The artists who performed the track. Each artist object includes a link
  /// in [href] to more detailed information about the artist.
  @HiveField(1)
  @override
  List<Artist> artists;

  /// A list of the countries in which the track can be played, identified by
  /// their ISO 3166-1 alpha-2 code.
  @HiveField(2)
  @JsonKey(name: 'available_markets')
  @override
  List<String> availableMarkets;

  /// The disc number
  /// (usually [1] unless the album consists of more than one disc)
  @HiveField(3)
  @JsonKey(name: 'disc_number')
  @override
  int discNumber;

  /// The track length in milliseconds.
  @HiveField(4)
  @JsonKey(name: 'duration_ms')
  @override
  int durationMs;

  /// The track length
  @HiveField(5)
  @JsonKey(ignore: true)
  @override
  Duration get duration => Duration(milliseconds: durationMs);

  /// Whether or not the track has explicit lyrics
  /// ([true] = yes it does; [false] = no it does not OR unknown).
  @HiveField(6)
  @override
  bool explicit;

  /// Known external IDs for this track.
  @HiveField(7)
  @JsonKey(name: 'external_ids')
  ExternalIds externalIds;

  /// Known external URLs for this track.
  @HiveField(8)
  @JsonKey(name: 'external_urls')
  @override
  ExternalUrls externalUrls;

  /// A link to the Web API endpoint providing full details of the track.
  @HiveField(9)
  @override
  String href;

  /// The Spotify ID for the track.
  @HiveField(10)
  @override
  String id;

  /// Part of the response when Track Relinking is applied. If true, the track
  /// is playable in the given market. Otherwise false.
  @HiveField(11)
  @JsonKey(name: 'is_playable')
  @override
  bool isPlayable;

  /// Part of the response when Track Relinking is applied and is only part of
  /// the response if the track linking, in fact, exists. The requested track
  /// has been replaced with a different track. The track in the linked_from
  /// object contains information about the originally requested track.
  @HiveField(12)
  @JsonKey(name: 'linked_from')
  @override
  TrackLink linkedFrom;

  /// The name of the track.
  @HiveField(13)
  @override
  String name;

  /// The popularity of the track. The value will be between 0 and 100, with 100
  /// being the most popular.
  ///
  /// The popularity of a track is a value between 0 and 100, with 100 being the
  /// most popular. The popularity is calculated by algorithm and is based, in
  /// the most part, on the total number of plays the track has had and how
  /// recent those plays are.
  ///
  /// Generally speaking, songs that are being played a lot now will have a
  /// higher popularity than songs that were played a lot in the past. Duplicate
  /// tracks (e.g. the same track from a single and an album) are rated
  /// independently. Artist and album popularity is derived mathematically from
  /// track popularity. Note that the popularity value may lag actual popularity
  /// by a few days: the value is not updated in real time.
  @HiveField(14)
  int popularity;

  /// A URL to a 30 second preview (MP3 format) of the track. [null] if not
  /// available.
  @HiveField(15)
  @JsonKey(name: 'preview_url')
  @override
  String previewUrl;

  /// The number of the track. If an album has several discs, the track number
  /// is the number on the specified disc.
  @HiveField(16)
  @JsonKey(name: 'track_number')
  @override
  int trackNumber;

  /// The object type: "track".
  @HiveField(17)
  @override
  String type;

  /// The Spotify URI for the track.
  @HiveField(18)
  @override
  String uri;
}

@HiveType(typeId: 31)
@JsonSerializable()
class TrackSimple extends Object {
  TrackSimple();

  factory TrackSimple.fromJson(Map<String, dynamic> json) =>
      _$TrackSimpleFromJson(json);

  Map<String, dynamic> toJson() => _$TrackSimpleToJson(this);

  /// The artists who performed the track. Each artist object includes a link
  /// in [href] to more detailed information about the artist.
  @HiveField(0)
  List<Artist> artists;

  /// A list of the countries in which the track can be played, identified by
  /// their ISO 3166-1 alpha-2 code.
  @HiveField(1)
  @JsonKey(name: 'available_markets')
  List<String> availableMarkets;

  /// The disc number
  /// (usually [1] unless the album consists of more than one disc)
  @HiveField(2)
  @JsonKey(name: 'disc_number')
  int discNumber;

  /// The track length in milliseconds.
  @HiveField(3)
  @JsonKey(name: 'duration_ms')
  int durationMs;

  /// The track length
  @HiveField(4)
  @JsonKey(ignore: true)
  Duration get duration => Duration(milliseconds: durationMs);

  /// Whether or not the track has explicit lyrics
  /// ([true] = yes it does; [false] = no it does not OR unknown).
  @HiveField(5)
  bool explicit;

  /// Known external URLs for this track.
  @HiveField(6)
  @JsonKey(name: 'external_urls')
  ExternalUrls externalUrls;

  /// A link to the Web API endpoint providing full details of the track.
  @HiveField(7)
  String href;

  /// The Spotify ID for the track.
  @HiveField(8)
  String id;

  /// Part of the response when Track Relinking is applied. If true, the track
  /// is playable in the given market. Otherwise false.
  @HiveField(9)
  @JsonKey(name: 'is_playable')
  bool isPlayable;

  /// Part of the response when Track Relinking is applied and is only part of
  /// the response if the track linking, in fact, exists. The requested track
  /// has been replaced with a different track. The track in the linked_from
  /// object contains information about the originally requested track.
  @HiveField(10)
  @JsonKey(name: 'linked_from')
  TrackLink linkedFrom;

  /// The name of the track.
  @HiveField(11)
  String name;

  /// A URL to a 30 second preview (MP3 format) of the track. [null] if not
  /// available.
  @HiveField(12)
  @JsonKey(name: 'preview_url')
  String previewUrl;

  /// The number of the track. If an album has several discs, the track number
  /// is the number on the specified disc.
  @HiveField(13)
  @JsonKey(name: 'track_number')
  int trackNumber;

  /// The object type: "track".
  @HiveField(14)
  String type;

  /// The Spotify URI for the track.
  @HiveField(15)
  String uri;
}

/// A song saved in a Spotify user’s “Your Music” library
@HiveType(typeId: 32)
@JsonSerializable()
class TrackSaved extends Object {
  TrackSaved();
  factory TrackSaved.fromJson(Map<String, dynamic> json) =>
      _$TrackSavedFromJson(json);

  Map<String, dynamic> toJson() => _$TrackSavedToJson(this);

  /// The date and time the track was saved.
  @HiveField(0)
  @JsonKey(name: 'added_at')
  DateTime addedAt;

  /// Information about the track.
  @HiveField(1)
  Track track;
}

@HiveType(typeId: 33)
@JsonSerializable()
class TrackLink extends Object {
  TrackLink();
  factory TrackLink.fromJson(Map<String, dynamic> json) =>
      _$TrackLinkFromJson(json);

  Map<String, dynamic> toJson() => _$TrackLinkToJson(this);

  /// Known external URLs for this track.
  @HiveField(0)
  @JsonKey(name: 'external_urls')
  Map<String, String> externalUrls;

  /// A link to the Web API endpoint providing full details of the track.
  @HiveField(1)
  String href;

  /// The Spotify ID for the track.
  @HiveField(2)
  String id;

  /// The object type: "track".
  @HiveField(3)
  String type;

  /// The Spotify URI for the track.
  @HiveField(4)
  String uri;
}

@HiveType(typeId: 34)
@JsonSerializable()
class TracksLink extends Object {
  TracksLink();
  factory TracksLink.fromJson(Map<String, dynamic> json) =>
      _$TracksLinkFromJson(json);

  Map<String, dynamic> toJson() => _$TracksLinkToJson(this);

  /// A link to the Web API endpoint where full details of the playlist's
  /// tracks can be retrieved
  @HiveField(0)
  String href;

  /// Total number of tracks in the playlist
  @HiveField(1)
  int total;
}
