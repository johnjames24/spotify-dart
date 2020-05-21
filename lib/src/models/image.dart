// Copyright (c) 2017, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

@HiveType(typeId: 20)
@JsonSerializable()
class Image extends Object {
  Image();

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);

  /// The image height in pixels. If unknown: null or not returned.
  @HiveField(0)
  int height;

  /// The image width in pixels. If unknown: null or not returned.
  @HiveField(1)
  int width;

  /// The source URL of the image.
  @HiveField(2)
  String url;
}
