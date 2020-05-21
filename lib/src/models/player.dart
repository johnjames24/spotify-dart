// Copyright (c) 2018, chances. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

@HiveType(typeId: 23)
@JsonSerializable()
class Player extends Object {
  Player() {
    is_playing = false;
  }

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);

  /// Unix Millisecond Timestamp when data was fetched
  @HiveField(0)
  int timestamp;

  /// A [PlayerContext] Object. Can be [null].
  @HiveField(1)
  PlayerContext context;

  /// Progress into the currently playing track. Can be [null].
  @HiveField(2)
  int progress_ms;

  /// The currently playing track. Can be [null].
  @HiveField(3)
  Track item;

  /// The object type of the currently playing item. Can be one of track,
  /// episode, ad or unknown.
  @HiveField(4)
  String currently_playing_type;

  /// If something is currently playing.
  @HiveField(5)
  bool is_playing;
}

@HiveType(typeId: 22)
@JsonSerializable()
class PlayerContext extends Object {
  PlayerContext();

  factory PlayerContext.fromJson(Map<String, dynamic> json) =>
      _$PlayerContextFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerContextToJson(this);

  /// The external_urls of the context, or [null] if not available.
  @HiveField(0)
  ExternalUrls external_urls;

  /// The href of the context, or [null] if not available.
  @HiveField(1)
  String href;

  /// The object type of the item’s context. Can be one of album, artist or playlist.
  @HiveField(2)
  String type;

  /// The uri of the context.
  @HiveField(3)
  String uri;
}
