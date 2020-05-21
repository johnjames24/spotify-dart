part of spotify.models;

@HiveType(typeId: 13)
@JsonSerializable()
class Category extends Object {
  Category();

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  /// A link to the Web API endpoint returning full details of the category.
  @HiveField(0)
  String href;

  /// The category icon, in various sizes.
  @HiveField(1)
  List<Image> icons;

  /// The Spotify category ID of the category.
  @HiveField(2)
  String id;

  /// The name of the category.
  @HiveField(3)
  String name;
}
