part of spotify.models;

@HiveType(typeId: 28)
@JsonSerializable()
class Recommendations extends Object{
  Recommendations();

  factory Recommendations.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationsToJson(this);

  /// A List of [RecommendationSeed] objects.
  @HiveField(0)
  List<RecommendationsSeed> seeds;

  /// A List of [TrackSimple] objects ordered according to the parameters
  /// supplied.
  @HiveField(1)
  List<TrackSimple> tracks;
}

@HiveType(typeId: 29)
@JsonSerializable()
class RecommendationsSeed extends Object{
  RecommendationsSeed();

  factory RecommendationsSeed.fromJson(Map<String, dynamic> json) =>
    _$RecommendationsSeedFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationsSeedToJson(this);

  /// The number of tracks available after min_* and max_* filters
  /// have been applied.
  @HiveField(0)
  int afterFilteringSize;

  /// The number of tracks available after relinking for regional availability.
  @HiveField(1)
  int afterRelinkingSize;

  /// A link to the full track or artist data for this seed.
  /// For tracks this will be a link to a Track Object.
  /// For artists a link to an Artist Object.
  /// For genre seeds, this value will be null.
  @HiveField(2)
  String href;

  /// The id used to select this seed.
  /// This will be the same as the string used in the seed_artists,
  /// seed_tracks or seed_genres parameter.
  @HiveField(3)
  String id;

  /// The number of recommended tracks available for this seed.
  @HiveField(4)
  int initialPoolSize;

  /// The entity type of this seed. One of artist, track or genre.
  @HiveField(5)
  String type;
}