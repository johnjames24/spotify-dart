// Copyright (c) 2017, chances. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

@HiveType(typeId: 24)
@JsonSerializable()
class Playlist extends Object implements PlaylistSimple {
  Playlist();

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PlaylistToJson(this);


  /// true if the owner allows other users to modify the playlist.
  @HiveField(0)
  @override
  bool collaborative;

  /// The playlist description. Only returned for modified, verified playlists,
  /// otherwise [null].
  @HiveField(1)
  String description;

  /// Known external URLs for this playlist.
  @HiveField(2)
  @JsonKey(name: 'external_urls')
  @override
  ExternalUrls externalUrls;

  /// Information about the followers of the playlist.
  @HiveField(3)
  Followers followers;

  /// A link to the Web API endpoint providing full details of the playlist.
  @HiveField(4)
  @override
  String href;

  /// The Spotify ID for the playlist.
  @HiveField(5)
  @override
  String id;

  /// Images for the playlist. The array may be empty or contain up to three
  /// images. The images are returned by size in descending order. See Working
  /// with Playlists.
  ///
  /// Note: If returned, the source URL for the image (url) is temporary and
  /// will expire in less than a day.
  @HiveField(6)
  @override
  List<Image> images;

  /// The name of the playlist.
  @HiveField(7)
  @override
  String name;

  /// The user who owns the playlist
  @HiveField(8)
  @override
  User owner;

  /// The playlist's public/private status: [true] the playlist is public,
  /// [false] the playlist is private, null the playlist status is not relevant.
  /// For more about public/private status, see Working with Playlists.
  @HiveField(9)
  @override
  bool public;

  /// The version identifier for the current playlist. Can be supplied in other
  /// requests to target a specific playlist version
  @HiveField(10)
  @JsonKey(name: 'snapshot_id')
  @override
  String snapshotId;

  /// Use [Playlist.tracks]
  @HiveField(11)
  @override
  @JsonKey(ignore: true)
  TracksLink tracksLink;

  /// Information about the tracks of the playlist.
  @HiveField(12)
  Paging<Track> tracks;

  /// The object type: "playlist"
  @HiveField(13)
  @override
  String type;

  /// The Spotify URI for the playlist.
  @HiveField(14)
  @override
  String uri;
}

@HiveType(typeId: 25)
@JsonSerializable()
class PlaylistSimple extends Object {
  PlaylistSimple();
  factory PlaylistSimple.fromJson(Map<String, dynamic> json) =>
      _$PlaylistSimpleFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistSimpleToJson(this);

  /// true if the owner allows other users to modify the playlist.
  @HiveField(0)
  bool collaborative;

  /// Known external URLs for this playlist.
  @HiveField(1)
  @JsonKey(name: 'external_urls')
  ExternalUrls externalUrls;

  /// A link to the Web API endpoint providing full details of the playlist.
  @HiveField(2)
  String href;

  /// The Spotify ID for the playlist.
  @HiveField(3)
  String id;

  /// Images for the playlist. The array may be empty or contain up to three
  /// images. The images are returned by size in descending order. See Working
  /// with Playlists.
  ///
  /// Note: If returned, the source URL for the image (url) is temporary and
  /// will expire in less than a day.
  @HiveField(4)
  List<Image> images;

  /// The name of the playlist.
  @HiveField(5)
  String name;

  /// The user who owns the playlist
  @HiveField(6)
  User owner;

  /// The playlist's public/private status: [true] the playlist is public,
  /// [false] the playlist is private, null the playlist status is not relevant.
  /// For more about public/private status, see Working with Playlists.
  @HiveField(7)
  bool public;

  /// The version identifier for the current playlist. Can be supplied in other
  /// requests to target a specific playlist version
  @HiveField(8)
  @JsonKey(name: 'snapshot_id')
  String snapshotId;

  /// A collection containing a link (href) to the Web API endpoint where full
  /// details of the playlist's tracks can be retrieved, along with the total
  /// number of tracks in the playlist.
  @HiveField(9)
  @JsonKey(name: 'tracks')
  TracksLink tracksLink;

  /// The object type: "playlist"
  @HiveField(10)
  String type;

  /// The Spotify URI for the playlist.
  @HiveField(11)
  String uri;
}

@HiveType(typeId: 26)
@JsonSerializable()
class PlaylistsFeatured extends Object {
  PlaylistsFeatured();
  factory PlaylistsFeatured.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsFeaturedFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistsFeaturedToJson(this);

  /// The message of the day for Spotify's featured playlists
  @HiveField(0)
  String message;
}

@HiveType(typeId: 27)
@JsonSerializable()
class PlaylistTrack extends Object {
  PlaylistTrack();
  factory PlaylistTrack.fromJson(Map<String, dynamic> json) =>
      _$PlaylistTrackFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistTrackToJson(this);

  /// The date and time the track was added.
  /// Note that some very old playlists may return [null] in this field.
  @HiveField(0)
  @JsonKey(name: 'added_at')
  DateTime addedAt;

  /// The Spotify user who added the track.
  /// Note that some very old playlists may return [null] in this field.
  @HiveField(1)
  @JsonKey(name: 'added_by')
  UserPublic addedBy;

  /// Whether this track is a local file or not.
  @HiveField(2)
  @JsonKey(name: 'is_local')
  bool isLocal;

  /// Information about the track
  @HiveField(3)
  Track track;
}
