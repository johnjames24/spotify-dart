// Copyright (c) 2020, hayribakici. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify.models;

@HiveType(typeId: 14)
@JsonSerializable()
class Device extends Object {
  Device();

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceToJson(this);

  /// The device ID. This may be [null].
  @HiveField(0)
  String id;

  @HiveField(1)
  @JsonKey(name: 'is_active', defaultValue: false)
  bool isActive;

  /// Whether controlling this device is restricted.
  /// At present if this is [true] then no Web API commands will be
  /// accepted by this device.
  @HiveField(2)
  @JsonKey(name: 'is_private_session', defaultValue: false)
  bool isPrivateSession;

  /// Whether controlling this device is restricted.
  /// At present if this is [true] then no Web API commands will be accepted by this device.
  @HiveField(3)
  @JsonKey(name: 'is_restricted', defaultValue: false)
  bool isRestricted;

  /// The name of the device
  @HiveField(4)
  String name;

  /// [DeviceType], such as [Computer], [Smartphone] or [Speaker].
  @HiveField(5)
  DeviceType type;

  /// The current volume in percent. This may be null.
  @HiveField(6)
  @JsonKey(name: 'volume_percent')
  int volumePercent;
}

@HiveType(typeId: 15)
enum DeviceType {
  @HiveField(0)
  Computer,

  @HiveField(1)
  Tablet,

  @HiveField(2)
  Smartphone,

  @HiveField(3)
  Speaker,

  @HiveField(4)
  TV,

  @HiveField(5)
  AVR,

  @HiveField(6)
  STB,

  @HiveField(7)
  AudioDongle,

  @HiveField(8)
  GameConsole,

  @HiveField(9)
  CastVideo,

  @HiveField(10)
  CastAudio,

  @HiveField(11)
  Automobile,
  
  @HiveField(12)
  Unknown
}
