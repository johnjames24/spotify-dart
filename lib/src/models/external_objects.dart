// Copyright (c) 2019, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

@HiveType(typeId: 17)
@JsonSerializable()
class ExternalUrls extends Object {
  ExternalUrls();

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalUrlsToJson(this);

  /// The Spotify URL for the object.
  @HiveField(0)
  String spotify;
}

@HiveType(typeId: 18)
@JsonSerializable()
class ExternalIds extends Object {
  ExternalIds();

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalIdsToJson(this);

  /// International Standard Recording Code
  @HiveField(0)
  String isrc;

  /// International Article Number
  @HiveField(1)
  String ean;

  /// Universal Product Code
  @HiveField(2)
  String upc;
}
