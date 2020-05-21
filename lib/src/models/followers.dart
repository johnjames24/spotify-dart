// Copyright (c) 2017, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

@HiveType(typeId: 19)
@JsonSerializable()
class Followers extends Object {
  Followers();

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);

  Map<String, dynamic> toJson() => _$FollowersToJson(this);

  /// A link to the Web API endpoint providing full details of the followers;
  /// null if not available.
  ///
  /// Please note that this will always be set to null, as the Web API does not
  /// support it at the moment.
  @HiveField(0)
  String href;

  /// The total number of followers.
  @HiveField(1)
  int total;
}
