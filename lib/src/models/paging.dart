// Copyright (c) 2017, chances. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

typedef ParserFunction<T> = T Function(dynamic object);

Iterable<dynamic> itemsNativeFromJson(List<dynamic> json) => json;
List<Map> itemsNativeToJson(Iterable<dynamic> items) => List.from(items);

@HiveType(typeId: 21)
@JsonSerializable()
class Paging<T> extends Object {
  Paging();

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);

  Map<String, dynamic> toJson() => _$PagingToJson(this);

  /// A link to the Web API endpoint returning the full result of the request.
  @HiveField(0)
  String href;

  /// The requested data
  ///
  /// Note this is the raw JSON value. Use a [Page]'s [Page.items] to get the
  /// requested data as a deserialized list.
  @HiveField(1)
  @JsonKey(
      name: 'items', fromJson: itemsNativeFromJson, toJson: itemsNativeToJson)
  Iterable<dynamic> itemsNative;

  /// The maximum number of items in the response (as set in the query or by
  /// default).
  @HiveField(2)
  int limit;

  /// URL to the next page of items. ([null] if none)
  @HiveField(3)
  String next;

  /// The offset of the items returned (as set in the query or by default).
  @HiveField(4)
  int offset;

  /// URL to the previous page of items. (null if none)
  @HiveField(5)
  String previous;

  /// The total number of items available to return.
  @HiveField(6)
  int total;
}
