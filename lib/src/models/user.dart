// Copyright (c) 2017, chances. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

@HiveType(typeId: 35)
@JsonSerializable()
class User extends Object implements UserPublic {
  User();
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  /// The user's date-of-birth.
  ///
  /// This field is only available when the current user has granted access to
  /// the user-read-birthdate scope.
  @HiveField(0)
  String birthdate;

  /// The country of the user, as set in the user's account profile. An
  /// ISO 3166-1 alpha-2 country code. This field is only available when the
  /// current user has granted access to the user-read-private scope.
  @HiveField(1)
  String country;

  /// The name displayed on the user's profile. null if not available.
  @HiveField(2)
  @JsonKey(name: 'display_name')
  @override
  String displayName;

  /// The user's email address, as entered by the user when creating their
  /// account.
  ///
  /// Important! This email address is unverified; there is no proof that it
  /// actually belongs to the user.
  ///
  /// This field is only available when the current user has granted access to
  /// the user-read-email scope.
  @HiveField(3)
  String email;

  // /// Known public external URLs for this user.
  //@JsonKey(name: 'external_urls')
  //Map<String, String> externalUrls;

  /// Information about the followers of this user.
  @HiveField(4)
  @override
  Followers followers;

  /// A link to the Web API endpoint for this user.
  @HiveField(5)
  @override
  String href;

  /// The Spotify user ID for this user.
  @HiveField(6)
  @override
  String id;

  /// The user's profile image.
  @HiveField(7)
  @override
  List<Image> images;

  /// The user's Spotify subscription level: "premium", "free", etc. (The
  /// subscription level "open" can be considered the same as "free".)
  ///
  /// This field is only available when the current user has granted access to
  /// the user-read-private scope.
  @HiveField(8)
  String product;

  /// The object type: "user"
  @HiveField(9)
  @override
  String type;

  /// The Spotify URI for this user.
  @HiveField(10)
  @override
  String uri;
}

@HiveType(typeId: 36)
@JsonSerializable()
class UserPublic extends Object {
  UserPublic();
  factory UserPublic.fromJson(Map<String, dynamic> json) =>
      _$UserPublicFromJson(json);

      Map<String, dynamic> toJson() => _$UserPublicToJson(this);

  /// The name displayed on the user's profile. null if not available.
  @HiveField(0)
  @JsonKey(name: 'display_name')
  String displayName;

  // /// Known public external URLs for this user.
  //@JsonKey(name: 'external_urls')
  //Map<String, String> externalUrls;

  /// Information about the followers of this user.
  @HiveField(1)
  Followers followers;

  /// A link to the Web API endpoint for this user.
  @HiveField(2)
  String href;

  /// The Spotify user ID for this user.
  @HiveField(3)
  String id;

  /// The user's profile image.
  @HiveField(4)
  List<Image> images;

  /// The object type: "user"
  @HiveField(5)
  String type;

  /// The Spotify URI for this user.
  @HiveField(6)
  String uri;
}
