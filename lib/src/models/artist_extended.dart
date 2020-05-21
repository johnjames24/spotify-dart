part of spotify.models;

@HiveType(typeId: 3)
@JsonSerializable()
class ArtistExtended extends Object {
  ArtistExtended();

  factory ArtistExtended.fromJson(Map<String, dynamic> json) =>
      _$ArtistExtendedFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistExtendedToJson(this);

  @HiveField(0)
  String bio;

  @HiveField(1)
  List<HeaderImage> headerImages;

  @HiveField(2)
  ArtistInsights artistInsights;
}

@HiveType(typeId: 4)
@JsonSerializable()
class HeaderImage extends Object {
  HeaderImage();

  factory HeaderImage.fromJson(Map<String, dynamic> json) =>
      _$HeaderImageFromJson(json);

  @HiveField(0)
  Map<String, dynamic> toJson() => _$HeaderImageToJson(this);

  @HiveField(1)
  String url;
}

@HiveType(typeId: 5)
@JsonSerializable()
class ArtistInsights extends Object {
  ArtistInsights();

  factory ArtistInsights.fromJson(Map<String, dynamic> json) =>
      _$ArtistInsightsFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistInsightsToJson(this);

  @HiveField(0)
  @JsonKey(name: 'artist_gid')
  String artistGid;

  @HiveField(1)
  Autobiography autobiography;

  @HiveField(2)
  String biography;

  @HiveField(3)
  @JsonKey(name: 'header_image')
  Image headerImage;

  @HiveField(4)
  List<Image> images;

  @HiveField(5)
  @JsonKey(name: 'global_chart_position')
  int globalChartPosition;

  @HiveField(6)
  @JsonKey(name: 'monthly_listeners')
  int monthlyListeners;

  @HiveField(7)
  @JsonKey(name: 'monthly_listeners_delta')
  int monthlyListenersDelta;

  @HiveField(8)
  @JsonKey(name: 'follower_count')
  int followerCount;

  @HiveField(9)
  @JsonKey(name: 'following_count')
  int followingCount;

  @HiveField(10)
  EntriesList playlists;

  @HiveField(11)
  List<City> cities;
}

@HiveType(typeId: 6)
@JsonSerializable()
class City extends Object {
  City();

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);

  @HiveField(0)
  String country;

  @HiveField(1)
  String region;

  @HiveField(2)
  String city;

  @HiveField(3)
  int listeners;
}

@HiveType(typeId: 7)
@JsonSerializable()
class Autobiography extends Object {
  Autobiography();

  factory Autobiography.fromJson(Map<String, dynamic> json) =>
      _$AutobiographyFromJson(json);

  Map<String, dynamic> toJson() => _$AutobiographyToJson(this);

  @HiveField(0)
  String body;

  @HiveField(1)
  List<String> urls;

  @HiveField(2)
  Map<String, String> links;
}

@HiveType(typeId: 8)
@JsonSerializable()
class EntriesList extends Object {
  EntriesList();

  factory EntriesList.fromJson(Map<String, dynamic> json) =>
      _$EntriesListFromJson(json);

  @HiveField(0)
  Map<String, dynamic> toJson() => _$EntriesListToJson(this);

  @HiveField(1)
  List<PlaylistSimplifed> entries;
}

@HiveType(typeId: 9)
@JsonSerializable()
class PlaylistSimplifed extends Object {
  PlaylistSimplifed();

  factory PlaylistSimplifed.fromJson(Map<String, dynamic> json) =>
      _$PlaylistSimplifedFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistSimplifedToJson(this);

  @HiveField(0)
  String uri;

  @HiveField(1)
  String name;

  @HiveField(2)
  Owner owner;

  @HiveField(3)
  int listeners;
}

@HiveType(typeId: 10)
@JsonSerializable()
class Owner extends Object {
  Owner();

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);

  @HiveField(0)
  String name;

  @HiveField(1)
  String uri;
}