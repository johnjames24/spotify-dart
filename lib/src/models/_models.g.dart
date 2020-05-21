// GENERATED CODE - DO NOT MODIFY BY HAND

part of spotify.models;

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExternalUrlsAdapter extends TypeAdapter<ExternalUrls> {
  @override
  final typeId = 17;

  @override
  ExternalUrls read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExternalUrls()..spotify = fields[0] as String;
  }

  @override
  void write(BinaryWriter writer, ExternalUrls obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.spotify);
  }
}

class ExternalIdsAdapter extends TypeAdapter<ExternalIds> {
  @override
  final typeId = 18;

  @override
  ExternalIds read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExternalIds()
      ..isrc = fields[0] as String
      ..ean = fields[1] as String
      ..upc = fields[2] as String;
  }

  @override
  void write(BinaryWriter writer, ExternalIds obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.isrc)
      ..writeByte(1)
      ..write(obj.ean)
      ..writeByte(2)
      ..write(obj.upc);
  }
}

class ArtistExtendedAdapter extends TypeAdapter<ArtistExtended> {
  @override
  final typeId = 3;

  @override
  ArtistExtended read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ArtistExtended()
      ..bio = fields[0] as String
      ..headerImages = (fields[1] as List)?.cast<HeaderImage>()
      ..artistInsights = fields[2] as ArtistInsights;
  }

  @override
  void write(BinaryWriter writer, ArtistExtended obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.bio)
      ..writeByte(1)
      ..write(obj.headerImages)
      ..writeByte(2)
      ..write(obj.artistInsights);
  }
}

class HeaderImageAdapter extends TypeAdapter<HeaderImage> {
  @override
  final typeId = 4;

  @override
  HeaderImage read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HeaderImage()..url = fields[1] as String;
  }

  @override
  void write(BinaryWriter writer, HeaderImage obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.url);
  }
}

class ArtistInsightsAdapter extends TypeAdapter<ArtistInsights> {
  @override
  final typeId = 5;

  @override
  ArtistInsights read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ArtistInsights()
      ..artistGid = fields[0] as String
      ..autobiography = fields[1] as Autobiography
      ..biography = fields[2] as String
      ..headerImage = fields[3] as Image
      ..images = (fields[4] as List)?.cast<Image>()
      ..globalChartPosition = fields[5] as int
      ..monthlyListeners = fields[6] as int
      ..monthlyListenersDelta = fields[7] as int
      ..followerCount = fields[8] as int
      ..followingCount = fields[9] as int
      ..playlists = fields[10] as EntriesList
      ..cities = (fields[11] as List)?.cast<City>();
  }

  @override
  void write(BinaryWriter writer, ArtistInsights obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.artistGid)
      ..writeByte(1)
      ..write(obj.autobiography)
      ..writeByte(2)
      ..write(obj.biography)
      ..writeByte(3)
      ..write(obj.headerImage)
      ..writeByte(4)
      ..write(obj.images)
      ..writeByte(5)
      ..write(obj.globalChartPosition)
      ..writeByte(6)
      ..write(obj.monthlyListeners)
      ..writeByte(7)
      ..write(obj.monthlyListenersDelta)
      ..writeByte(8)
      ..write(obj.followerCount)
      ..writeByte(9)
      ..write(obj.followingCount)
      ..writeByte(10)
      ..write(obj.playlists)
      ..writeByte(11)
      ..write(obj.cities);
  }
}

class CityAdapter extends TypeAdapter<City> {
  @override
  final typeId = 6;

  @override
  City read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return City()
      ..country = fields[0] as String
      ..region = fields[1] as String
      ..city = fields[2] as String
      ..listeners = fields[3] as int;
  }

  @override
  void write(BinaryWriter writer, City obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.country)
      ..writeByte(1)
      ..write(obj.region)
      ..writeByte(2)
      ..write(obj.city)
      ..writeByte(3)
      ..write(obj.listeners);
  }
}

class AutobiographyAdapter extends TypeAdapter<Autobiography> {
  @override
  final typeId = 7;

  @override
  Autobiography read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Autobiography()
      ..body = fields[0] as String
      ..urls = (fields[1] as List)?.cast<String>()
      ..links = (fields[2] as Map)?.cast<String, String>();
  }

  @override
  void write(BinaryWriter writer, Autobiography obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.body)
      ..writeByte(1)
      ..write(obj.urls)
      ..writeByte(2)
      ..write(obj.links);
  }
}

class EntriesListAdapter extends TypeAdapter<EntriesList> {
  @override
  final typeId = 8;

  @override
  EntriesList read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EntriesList()
      ..entries = (fields[1] as List)?.cast<PlaylistSimplifed>();
  }

  @override
  void write(BinaryWriter writer, EntriesList obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.entries);
  }
}

class PlaylistSimplifedAdapter extends TypeAdapter<PlaylistSimplifed> {
  @override
  final typeId = 9;

  @override
  PlaylistSimplifed read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlaylistSimplifed()
      ..uri = fields[0] as String
      ..name = fields[1] as String
      ..owner = fields[2] as Owner
      ..listeners = fields[3] as int;
  }

  @override
  void write(BinaryWriter writer, PlaylistSimplifed obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.uri)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.owner)
      ..writeByte(3)
      ..write(obj.listeners);
  }
}

class OwnerAdapter extends TypeAdapter<Owner> {
  @override
  final typeId = 10;

  @override
  Owner read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Owner()
      ..name = fields[0] as String
      ..uri = fields[1] as String;
  }

  @override
  void write(BinaryWriter writer, Owner obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.uri);
  }
}

class AlbumAdapter extends TypeAdapter<Album> {
  @override
  final typeId = 0;

  @override
  Album read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Album()
      ..copyrights = (fields[10] as List)?.cast<Copyright>()
      ..externalIds = fields[11] as ExternalIds
      ..genres = (fields[12] as List)?.cast<String>()
      ..label = fields[13] as String
      ..popularity = fields[14] as int
      ..releaseDate = fields[15] as String
      ..releaseDatePrecision = fields[16] as String
      ..albumType = fields[0] as String
      ..artists = (fields[1] as List)?.cast<ArtistSimple>()
      ..availableMarkets = (fields[2] as List)?.cast<String>()
      ..externalUrls = fields[3] as ExternalUrls
      ..href = fields[4] as String
      ..id = fields[5] as String
      ..images = (fields[6] as List)?.cast<Image>()
      ..name = fields[7] as String
      ..type = fields[8] as String
      ..uri = fields[9] as String;
  }

  @override
  void write(BinaryWriter writer, Album obj) {
    writer
      ..writeByte(17)
      ..writeByte(10)
      ..write(obj.copyrights)
      ..writeByte(11)
      ..write(obj.externalIds)
      ..writeByte(12)
      ..write(obj.genres)
      ..writeByte(13)
      ..write(obj.label)
      ..writeByte(14)
      ..write(obj.popularity)
      ..writeByte(15)
      ..write(obj.releaseDate)
      ..writeByte(16)
      ..write(obj.releaseDatePrecision)
      ..writeByte(0)
      ..write(obj.albumType)
      ..writeByte(1)
      ..write(obj.artists)
      ..writeByte(2)
      ..write(obj.availableMarkets)
      ..writeByte(3)
      ..write(obj.externalUrls)
      ..writeByte(4)
      ..write(obj.href)
      ..writeByte(5)
      ..write(obj.id)
      ..writeByte(6)
      ..write(obj.images)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(8)
      ..write(obj.type)
      ..writeByte(9)
      ..write(obj.uri);
  }
}

class AlbumSimpleAdapter extends TypeAdapter<AlbumSimple> {
  @override
  final typeId = 1;

  @override
  AlbumSimple read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlbumSimple()
      ..albumType = fields[0] as String
      ..artists = (fields[1] as List)?.cast<ArtistSimple>()
      ..availableMarkets = (fields[2] as List)?.cast<String>()
      ..externalUrls = fields[3] as ExternalUrls
      ..href = fields[4] as String
      ..id = fields[5] as String
      ..images = (fields[6] as List)?.cast<Image>()
      ..name = fields[7] as String
      ..type = fields[8] as String
      ..uri = fields[9] as String;
  }

  @override
  void write(BinaryWriter writer, AlbumSimple obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.albumType)
      ..writeByte(1)
      ..write(obj.artists)
      ..writeByte(2)
      ..write(obj.availableMarkets)
      ..writeByte(3)
      ..write(obj.externalUrls)
      ..writeByte(4)
      ..write(obj.href)
      ..writeByte(5)
      ..write(obj.id)
      ..writeByte(6)
      ..write(obj.images)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(8)
      ..write(obj.type)
      ..writeByte(9)
      ..write(obj.uri);
  }
}

class CopyrightAdapter extends TypeAdapter<Copyright> {
  @override
  final typeId = 2;

  @override
  Copyright read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Copyright()
      ..text = fields[0] as String
      ..type = fields[1] as String;
  }

  @override
  void write(BinaryWriter writer, Copyright obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.type);
  }
}

class ArtistAdapter extends TypeAdapter<Artist> {
  @override
  final typeId = 11;

  @override
  Artist read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Artist()
      ..externalUrls = fields[0] as ExternalUrls
      ..href = fields[1] as String
      ..id = fields[2] as String
      ..name = fields[3] as String
      ..type = fields[4] as String
      ..uri = fields[5] as String
      ..followers = fields[6] as Followers
      ..genres = (fields[7] as List)?.cast<String>()
      ..images = (fields[8] as List)?.cast<Image>()
      ..popularity = fields[9] as int;
  }

  @override
  void write(BinaryWriter writer, Artist obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.externalUrls)
      ..writeByte(1)
      ..write(obj.href)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.uri)
      ..writeByte(6)
      ..write(obj.followers)
      ..writeByte(7)
      ..write(obj.genres)
      ..writeByte(8)
      ..write(obj.images)
      ..writeByte(9)
      ..write(obj.popularity);
  }
}

class AudioFeatureAdapter extends TypeAdapter<AudioFeature> {
  @override
  final typeId = 12;

  @override
  AudioFeature read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AudioFeature()
      ..acousticness = fields[0] as double
      ..analysisUrl = fields[1] as String
      ..danceability = fields[2] as double
      ..durationMs = fields[3] as int
      ..energy = fields[5] as double
      ..id = fields[6] as String
      ..instrumentalness = fields[7] as double
      ..key = fields[8] as int
      ..liveness = fields[9] as double
      ..loudness = fields[10] as double
      ..mode = fields[11] as int
      ..speechiness = fields[12] as double
      ..tempo = fields[13] as double
      ..timeSignature = fields[14] as int
      ..trackHref = fields[15] as String
      ..type = fields[16] as String
      ..uri = fields[17] as String
      ..valence = fields[18] as double;
  }

  @override
  void write(BinaryWriter writer, AudioFeature obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.acousticness)
      ..writeByte(1)
      ..write(obj.analysisUrl)
      ..writeByte(2)
      ..write(obj.danceability)
      ..writeByte(3)
      ..write(obj.durationMs)
      ..writeByte(5)
      ..write(obj.energy)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.instrumentalness)
      ..writeByte(8)
      ..write(obj.key)
      ..writeByte(9)
      ..write(obj.liveness)
      ..writeByte(10)
      ..write(obj.loudness)
      ..writeByte(11)
      ..write(obj.mode)
      ..writeByte(12)
      ..write(obj.speechiness)
      ..writeByte(13)
      ..write(obj.tempo)
      ..writeByte(14)
      ..write(obj.timeSignature)
      ..writeByte(15)
      ..write(obj.trackHref)
      ..writeByte(16)
      ..write(obj.type)
      ..writeByte(17)
      ..write(obj.uri)
      ..writeByte(18)
      ..write(obj.valence)
      ..writeByte(4)
      ..write(obj.duration);
  }
}

class CategoryAdapter extends TypeAdapter<Category> {
  @override
  final typeId = 13;

  @override
  Category read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Category()
      ..href = fields[0] as String
      ..icons = (fields[1] as List)?.cast<Image>()
      ..id = fields[2] as String
      ..name = fields[3] as String;
  }

  @override
  void write(BinaryWriter writer, Category obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.href)
      ..writeByte(1)
      ..write(obj.icons)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.name);
  }
}

class DeviceTypeAdapter extends TypeAdapter<DeviceType> {
  @override
  final typeId = 15;

  @override
  DeviceType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DeviceType.Computer;
      case 1:
        return DeviceType.Tablet;
      case 2:
        return DeviceType.Smartphone;
      case 3:
        return DeviceType.Speaker;
      case 4:
        return DeviceType.TV;
      case 5:
        return DeviceType.AVR;
      case 6:
        return DeviceType.STB;
      case 7:
        return DeviceType.AudioDongle;
      case 8:
        return DeviceType.GameConsole;
      case 9:
        return DeviceType.CastVideo;
      case 10:
        return DeviceType.CastAudio;
      case 11:
        return DeviceType.Automobile;
      case 12:
        return DeviceType.Unknown;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, DeviceType obj) {
    switch (obj) {
      case DeviceType.Computer:
        writer.writeByte(0);
        break;
      case DeviceType.Tablet:
        writer.writeByte(1);
        break;
      case DeviceType.Smartphone:
        writer.writeByte(2);
        break;
      case DeviceType.Speaker:
        writer.writeByte(3);
        break;
      case DeviceType.TV:
        writer.writeByte(4);
        break;
      case DeviceType.AVR:
        writer.writeByte(5);
        break;
      case DeviceType.STB:
        writer.writeByte(6);
        break;
      case DeviceType.AudioDongle:
        writer.writeByte(7);
        break;
      case DeviceType.GameConsole:
        writer.writeByte(8);
        break;
      case DeviceType.CastVideo:
        writer.writeByte(9);
        break;
      case DeviceType.CastAudio:
        writer.writeByte(10);
        break;
      case DeviceType.Automobile:
        writer.writeByte(11);
        break;
      case DeviceType.Unknown:
        writer.writeByte(12);
        break;
    }
  }
}

class DeviceAdapter extends TypeAdapter<Device> {
  @override
  final typeId = 14;

  @override
  Device read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device()
      ..id = fields[0] as String
      ..isActive = fields[1] as bool
      ..isPrivateSession = fields[2] as bool
      ..isRestricted = fields[3] as bool
      ..name = fields[4] as String
      ..type = fields[5] as DeviceType
      ..volumePercent = fields[6] as int;
  }

  @override
  void write(BinaryWriter writer, Device obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.isActive)
      ..writeByte(2)
      ..write(obj.isPrivateSession)
      ..writeByte(3)
      ..write(obj.isRestricted)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.volumePercent);
  }
}

class SpotifyErrorAdapter extends TypeAdapter<SpotifyError> {
  @override
  final typeId = 16;

  @override
  SpotifyError read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpotifyError()
      ..status = fields[0] as int
      ..message = fields[1] as String;
  }

  @override
  void write(BinaryWriter writer, SpotifyError obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.message);
  }
}

class FollowersAdapter extends TypeAdapter<Followers> {
  @override
  final typeId = 19;

  @override
  Followers read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Followers()
      ..href = fields[0] as String
      ..total = fields[1] as int;
  }

  @override
  void write(BinaryWriter writer, Followers obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.href)
      ..writeByte(1)
      ..write(obj.total);
  }
}

class ImageAdapter extends TypeAdapter<Image> {
  @override
  final typeId = 20;

  @override
  Image read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Image()
      ..height = fields[0] as int
      ..width = fields[1] as int
      ..url = fields[2] as String;
  }

  @override
  void write(BinaryWriter writer, Image obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.height)
      ..writeByte(1)
      ..write(obj.width)
      ..writeByte(2)
      ..write(obj.url);
  }
}

class PagingAdapter extends TypeAdapter<Paging> {
  @override
  final typeId = 21;

  @override
  Paging read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Paging()
      ..href = fields[0] as String
      ..itemsNative = (fields[1] as List)?.cast<dynamic>()
      ..limit = fields[2] as int
      ..next = fields[3] as String
      ..offset = fields[4] as int
      ..previous = fields[5] as String
      ..total = fields[6] as int;
  }

  @override
  void write(BinaryWriter writer, Paging obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.href)
      ..writeByte(1)
      ..write(obj.itemsNative?.toList())
      ..writeByte(2)
      ..write(obj.limit)
      ..writeByte(3)
      ..write(obj.next)
      ..writeByte(4)
      ..write(obj.offset)
      ..writeByte(5)
      ..write(obj.previous)
      ..writeByte(6)
      ..write(obj.total);
  }
}

class PlayerAdapter extends TypeAdapter<Player> {
  @override
  final typeId = 23;

  @override
  Player read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Player()
      ..timestamp = fields[0] as int
      ..context = fields[1] as PlayerContext
      ..progress_ms = fields[2] as int
      ..item = fields[3] as Track
      ..currently_playing_type = fields[4] as String
      ..is_playing = fields[5] as bool;
  }

  @override
  void write(BinaryWriter writer, Player obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.timestamp)
      ..writeByte(1)
      ..write(obj.context)
      ..writeByte(2)
      ..write(obj.progress_ms)
      ..writeByte(3)
      ..write(obj.item)
      ..writeByte(4)
      ..write(obj.currently_playing_type)
      ..writeByte(5)
      ..write(obj.is_playing);
  }
}

class PlayerContextAdapter extends TypeAdapter<PlayerContext> {
  @override
  final typeId = 22;

  @override
  PlayerContext read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlayerContext()
      ..external_urls = fields[0] as ExternalUrls
      ..href = fields[1] as String
      ..type = fields[2] as String
      ..uri = fields[3] as String;
  }

  @override
  void write(BinaryWriter writer, PlayerContext obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.external_urls)
      ..writeByte(1)
      ..write(obj.href)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.uri);
  }
}

class PlaylistAdapter extends TypeAdapter<Playlist> {
  @override
  final typeId = 24;

  @override
  Playlist read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Playlist()
      ..collaborative = fields[0] as bool
      ..description = fields[1] as String
      ..externalUrls = fields[2] as ExternalUrls
      ..followers = fields[3] as Followers
      ..href = fields[4] as String
      ..id = fields[5] as String
      ..images = (fields[6] as List)?.cast<Image>()
      ..name = fields[7] as String
      ..owner = fields[8] as User
      ..public = fields[9] as bool
      ..snapshotId = fields[10] as String
      ..tracksLink = fields[11] as TracksLink
      ..tracks = fields[12] as Paging
      ..type = fields[13] as String
      ..uri = fields[14] as String;
  }

  @override
  void write(BinaryWriter writer, Playlist obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.collaborative)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.externalUrls)
      ..writeByte(3)
      ..write(obj.followers)
      ..writeByte(4)
      ..write(obj.href)
      ..writeByte(5)
      ..write(obj.id)
      ..writeByte(6)
      ..write(obj.images)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(8)
      ..write(obj.owner)
      ..writeByte(9)
      ..write(obj.public)
      ..writeByte(10)
      ..write(obj.snapshotId)
      ..writeByte(11)
      ..write(obj.tracksLink)
      ..writeByte(12)
      ..write(obj.tracks)
      ..writeByte(13)
      ..write(obj.type)
      ..writeByte(14)
      ..write(obj.uri);
  }
}

class PlaylistSimpleAdapter extends TypeAdapter<PlaylistSimple> {
  @override
  final typeId = 25;

  @override
  PlaylistSimple read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlaylistSimple()
      ..collaborative = fields[0] as bool
      ..externalUrls = fields[1] as ExternalUrls
      ..href = fields[2] as String
      ..id = fields[3] as String
      ..images = (fields[4] as List)?.cast<Image>()
      ..name = fields[5] as String
      ..owner = fields[6] as User
      ..public = fields[7] as bool
      ..snapshotId = fields[8] as String
      ..tracksLink = fields[9] as TracksLink
      ..type = fields[10] as String
      ..uri = fields[11] as String;
  }

  @override
  void write(BinaryWriter writer, PlaylistSimple obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.collaborative)
      ..writeByte(1)
      ..write(obj.externalUrls)
      ..writeByte(2)
      ..write(obj.href)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.images)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.owner)
      ..writeByte(7)
      ..write(obj.public)
      ..writeByte(8)
      ..write(obj.snapshotId)
      ..writeByte(9)
      ..write(obj.tracksLink)
      ..writeByte(10)
      ..write(obj.type)
      ..writeByte(11)
      ..write(obj.uri);
  }
}

class PlaylistsFeaturedAdapter extends TypeAdapter<PlaylistsFeatured> {
  @override
  final typeId = 26;

  @override
  PlaylistsFeatured read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlaylistsFeatured()..message = fields[0] as String;
  }

  @override
  void write(BinaryWriter writer, PlaylistsFeatured obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.message);
  }
}

class PlaylistTrackAdapter extends TypeAdapter<PlaylistTrack> {
  @override
  final typeId = 27;

  @override
  PlaylistTrack read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlaylistTrack()
      ..addedAt = fields[0] as DateTime
      ..addedBy = fields[1] as UserPublic
      ..isLocal = fields[2] as bool
      ..track = fields[3] as Track;
  }

  @override
  void write(BinaryWriter writer, PlaylistTrack obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.addedAt)
      ..writeByte(1)
      ..write(obj.addedBy)
      ..writeByte(2)
      ..write(obj.isLocal)
      ..writeByte(3)
      ..write(obj.track);
  }
}

class RecommendationsAdapter extends TypeAdapter<Recommendations> {
  @override
  final typeId = 28;

  @override
  Recommendations read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Recommendations()
      ..seeds = (fields[0] as List)?.cast<RecommendationsSeed>()
      ..tracks = (fields[1] as List)?.cast<TrackSimple>();
  }

  @override
  void write(BinaryWriter writer, Recommendations obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.seeds)
      ..writeByte(1)
      ..write(obj.tracks);
  }
}

class RecommendationsSeedAdapter extends TypeAdapter<RecommendationsSeed> {
  @override
  final typeId = 29;

  @override
  RecommendationsSeed read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecommendationsSeed()
      ..afterFilteringSize = fields[0] as int
      ..afterRelinkingSize = fields[1] as int
      ..href = fields[2] as String
      ..id = fields[3] as String
      ..initialPoolSize = fields[4] as int
      ..type = fields[5] as String;
  }

  @override
  void write(BinaryWriter writer, RecommendationsSeed obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.afterFilteringSize)
      ..writeByte(1)
      ..write(obj.afterRelinkingSize)
      ..writeByte(2)
      ..write(obj.href)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.initialPoolSize)
      ..writeByte(5)
      ..write(obj.type);
  }
}

class TrackAdapter extends TypeAdapter<Track> {
  @override
  final typeId = 30;

  @override
  Track read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Track()
      ..album = fields[0] as AlbumSimple
      ..artists = (fields[1] as List)?.cast<Artist>()
      ..availableMarkets = (fields[2] as List)?.cast<String>()
      ..discNumber = fields[3] as int
      ..durationMs = fields[4] as int
      ..explicit = fields[6] as bool
      ..externalIds = fields[7] as ExternalIds
      ..externalUrls = fields[8] as ExternalUrls
      ..href = fields[9] as String
      ..id = fields[10] as String
      ..isPlayable = fields[11] as bool
      ..linkedFrom = fields[12] as TrackLink
      ..name = fields[13] as String
      ..popularity = fields[14] as int
      ..previewUrl = fields[15] as String
      ..trackNumber = fields[16] as int
      ..type = fields[17] as String
      ..uri = fields[18] as String;
  }

  @override
  void write(BinaryWriter writer, Track obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.album)
      ..writeByte(1)
      ..write(obj.artists)
      ..writeByte(2)
      ..write(obj.availableMarkets)
      ..writeByte(3)
      ..write(obj.discNumber)
      ..writeByte(4)
      ..write(obj.durationMs)
      ..writeByte(6)
      ..write(obj.explicit)
      ..writeByte(7)
      ..write(obj.externalIds)
      ..writeByte(8)
      ..write(obj.externalUrls)
      ..writeByte(9)
      ..write(obj.href)
      ..writeByte(10)
      ..write(obj.id)
      ..writeByte(11)
      ..write(obj.isPlayable)
      ..writeByte(12)
      ..write(obj.linkedFrom)
      ..writeByte(13)
      ..write(obj.name)
      ..writeByte(14)
      ..write(obj.popularity)
      ..writeByte(15)
      ..write(obj.previewUrl)
      ..writeByte(16)
      ..write(obj.trackNumber)
      ..writeByte(17)
      ..write(obj.type)
      ..writeByte(18)
      ..write(obj.uri)
      ..writeByte(5)
      ..write(obj.duration);
  }
}

class TrackSimpleAdapter extends TypeAdapter<TrackSimple> {
  @override
  final typeId = 31;

  @override
  TrackSimple read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TrackSimple()
      ..artists = (fields[0] as List)?.cast<Artist>()
      ..availableMarkets = (fields[1] as List)?.cast<String>()
      ..discNumber = fields[2] as int
      ..durationMs = fields[3] as int
      ..explicit = fields[5] as bool
      ..externalUrls = fields[6] as ExternalUrls
      ..href = fields[7] as String
      ..id = fields[8] as String
      ..isPlayable = fields[9] as bool
      ..linkedFrom = fields[10] as TrackLink
      ..name = fields[11] as String
      ..previewUrl = fields[12] as String
      ..trackNumber = fields[13] as int
      ..type = fields[14] as String
      ..uri = fields[15] as String;
  }

  @override
  void write(BinaryWriter writer, TrackSimple obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.artists)
      ..writeByte(1)
      ..write(obj.availableMarkets)
      ..writeByte(2)
      ..write(obj.discNumber)
      ..writeByte(3)
      ..write(obj.durationMs)
      ..writeByte(5)
      ..write(obj.explicit)
      ..writeByte(6)
      ..write(obj.externalUrls)
      ..writeByte(7)
      ..write(obj.href)
      ..writeByte(8)
      ..write(obj.id)
      ..writeByte(9)
      ..write(obj.isPlayable)
      ..writeByte(10)
      ..write(obj.linkedFrom)
      ..writeByte(11)
      ..write(obj.name)
      ..writeByte(12)
      ..write(obj.previewUrl)
      ..writeByte(13)
      ..write(obj.trackNumber)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.uri)
      ..writeByte(4)
      ..write(obj.duration);
  }
}

class TrackSavedAdapter extends TypeAdapter<TrackSaved> {
  @override
  final typeId = 32;

  @override
  TrackSaved read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TrackSaved()
      ..addedAt = fields[0] as DateTime
      ..track = fields[1] as Track;
  }

  @override
  void write(BinaryWriter writer, TrackSaved obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.addedAt)
      ..writeByte(1)
      ..write(obj.track);
  }
}

class TrackLinkAdapter extends TypeAdapter<TrackLink> {
  @override
  final typeId = 33;

  @override
  TrackLink read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TrackLink()
      ..externalUrls = (fields[0] as Map)?.cast<String, String>()
      ..href = fields[1] as String
      ..id = fields[2] as String
      ..type = fields[3] as String
      ..uri = fields[4] as String;
  }

  @override
  void write(BinaryWriter writer, TrackLink obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.externalUrls)
      ..writeByte(1)
      ..write(obj.href)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.uri);
  }
}

class TracksLinkAdapter extends TypeAdapter<TracksLink> {
  @override
  final typeId = 34;

  @override
  TracksLink read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TracksLink()
      ..href = fields[0] as String
      ..total = fields[1] as int;
  }

  @override
  void write(BinaryWriter writer, TracksLink obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.href)
      ..writeByte(1)
      ..write(obj.total);
  }
}

class UserAdapter extends TypeAdapter<User> {
  @override
  final typeId = 35;

  @override
  User read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User()
      ..birthdate = fields[0] as String
      ..country = fields[1] as String
      ..displayName = fields[2] as String
      ..email = fields[3] as String
      ..followers = fields[4] as Followers
      ..href = fields[5] as String
      ..id = fields[6] as String
      ..images = (fields[7] as List)?.cast<Image>()
      ..product = fields[8] as String
      ..type = fields[9] as String
      ..uri = fields[10] as String;
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.birthdate)
      ..writeByte(1)
      ..write(obj.country)
      ..writeByte(2)
      ..write(obj.displayName)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.followers)
      ..writeByte(5)
      ..write(obj.href)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.images)
      ..writeByte(8)
      ..write(obj.product)
      ..writeByte(9)
      ..write(obj.type)
      ..writeByte(10)
      ..write(obj.uri);
  }
}

class UserPublicAdapter extends TypeAdapter<UserPublic> {
  @override
  final typeId = 36;

  @override
  UserPublic read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserPublic()
      ..displayName = fields[0] as String
      ..followers = fields[1] as Followers
      ..href = fields[2] as String
      ..id = fields[3] as String
      ..images = (fields[4] as List)?.cast<Image>()
      ..type = fields[5] as String
      ..uri = fields[6] as String;
  }

  @override
  void write(BinaryWriter writer, UserPublic obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.displayName)
      ..writeByte(1)
      ..write(obj.followers)
      ..writeByte(2)
      ..write(obj.href)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.images)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.uri);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) {
  return ExternalUrls()..spotify = json['spotify'] as String;
}

Map<String, dynamic> _$ExternalUrlsToJson(ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) {
  return ExternalIds()
    ..isrc = json['isrc'] as String
    ..ean = json['ean'] as String
    ..upc = json['upc'] as String;
}

Map<String, dynamic> _$ExternalIdsToJson(ExternalIds instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
      'ean': instance.ean,
      'upc': instance.upc,
    };

ArtistExtended _$ArtistExtendedFromJson(Map<String, dynamic> json) {
  return ArtistExtended()
    ..bio = json['bio'] as String
    ..headerImages = (json['headerImages'] as List)
        ?.map((e) =>
            e == null ? null : HeaderImage.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..artistInsights = json['artistInsights'] == null
        ? null
        : ArtistInsights.fromJson(
            json['artistInsights'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ArtistExtendedToJson(ArtistExtended instance) =>
    <String, dynamic>{
      'bio': instance.bio,
      'headerImages': instance.headerImages,
      'artistInsights': instance.artistInsights,
    };

HeaderImage _$HeaderImageFromJson(Map<String, dynamic> json) {
  return HeaderImage()..url = json['url'] as String;
}

Map<String, dynamic> _$HeaderImageToJson(HeaderImage instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

ArtistInsights _$ArtistInsightsFromJson(Map<String, dynamic> json) {
  return ArtistInsights()
    ..artistGid = json['artist_gid'] as String
    ..autobiography = json['autobiography'] == null
        ? null
        : Autobiography.fromJson(json['autobiography'] as Map<String, dynamic>)
    ..biography = json['biography'] as String
    ..headerImage = json['header_image'] == null
        ? null
        : Image.fromJson(json['header_image'] as Map<String, dynamic>)
    ..images = (json['images'] as List)
        ?.map(
            (e) => e == null ? null : Image.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..globalChartPosition = json['global_chart_position'] as int
    ..monthlyListeners = json['monthly_listeners'] as int
    ..monthlyListenersDelta = json['monthly_listeners_delta'] as int
    ..followerCount = json['follower_count'] as int
    ..followingCount = json['following_count'] as int
    ..playlists = json['playlists'] == null
        ? null
        : EntriesList.fromJson(json['playlists'] as Map<String, dynamic>)
    ..cities = (json['cities'] as List)
        ?.map(
            (e) => e == null ? null : City.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ArtistInsightsToJson(ArtistInsights instance) =>
    <String, dynamic>{
      'artist_gid': instance.artistGid,
      'autobiography': instance.autobiography,
      'biography': instance.biography,
      'header_image': instance.headerImage,
      'images': instance.images,
      'global_chart_position': instance.globalChartPosition,
      'monthly_listeners': instance.monthlyListeners,
      'monthly_listeners_delta': instance.monthlyListenersDelta,
      'follower_count': instance.followerCount,
      'following_count': instance.followingCount,
      'playlists': instance.playlists,
      'cities': instance.cities,
    };

City _$CityFromJson(Map<String, dynamic> json) {
  return City()
    ..country = json['country'] as String
    ..region = json['region'] as String
    ..city = json['city'] as String
    ..listeners = json['listeners'] as int;
}

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'country': instance.country,
      'region': instance.region,
      'city': instance.city,
      'listeners': instance.listeners,
    };

Autobiography _$AutobiographyFromJson(Map<String, dynamic> json) {
  return Autobiography()
    ..body = json['body'] as String
    ..urls = (json['urls'] as List)?.map((e) => e as String)?.toList()
    ..links = (json['links'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    );
}

Map<String, dynamic> _$AutobiographyToJson(Autobiography instance) =>
    <String, dynamic>{
      'body': instance.body,
      'urls': instance.urls,
      'links': instance.links,
    };

EntriesList _$EntriesListFromJson(Map<String, dynamic> json) {
  return EntriesList()
    ..entries = (json['entries'] as List)
        ?.map((e) => e == null
            ? null
            : PlaylistSimplifed.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$EntriesListToJson(EntriesList instance) =>
    <String, dynamic>{
      'entries': instance.entries,
    };

PlaylistSimplifed _$PlaylistSimplifedFromJson(Map<String, dynamic> json) {
  return PlaylistSimplifed()
    ..uri = json['uri'] as String
    ..name = json['name'] as String
    ..owner = json['owner'] == null
        ? null
        : Owner.fromJson(json['owner'] as Map<String, dynamic>)
    ..listeners = json['listeners'] as int;
}

Map<String, dynamic> _$PlaylistSimplifedToJson(PlaylistSimplifed instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'name': instance.name,
      'owner': instance.owner,
      'listeners': instance.listeners,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return Owner()
    ..name = json['name'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'name': instance.name,
      'uri': instance.uri,
    };

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return Album()
    ..albumType = json['album_type'] as String
    ..artists = (json['artists'] as List)
        ?.map((e) =>
            e == null ? null : ArtistSimple.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..availableMarkets =
        (json['available_markets'] as List)?.map((e) => e as String)?.toList()
    ..externalUrls = json['external_urls'] == null
        ? null
        : ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..images = (json['images'] as List)
        ?.map(
            (e) => e == null ? null : Image.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..name = json['name'] as String
    ..type = json['type'] as String
    ..uri = json['uri'] as String
    ..copyrights = (json['copyrights'] as List)
        ?.map((e) =>
            e == null ? null : Copyright.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..externalIds = json['external_ids'] == null
        ? null
        : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>)
    ..genres = (json['genres'] as List)?.map((e) => e as String)?.toList()
    ..label = json['label'] as String
    ..popularity = json['popularity'] as int
    ..releaseDate = json['release_date'] as String
    ..releaseDatePrecision = json['release_date_precision'] as String;
}

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'album_type': instance.albumType,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
      'copyrights': instance.copyrights,
      'external_ids': instance.externalIds,
      'genres': instance.genres,
      'label': instance.label,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
    };

AlbumSimple _$AlbumSimpleFromJson(Map<String, dynamic> json) {
  return AlbumSimple()
    ..albumType = json['album_type'] as String
    ..artists = (json['artists'] as List)
        ?.map((e) =>
            e == null ? null : ArtistSimple.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..availableMarkets =
        (json['available_markets'] as List)?.map((e) => e as String)?.toList()
    ..externalUrls = json['external_urls'] == null
        ? null
        : ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..images = (json['images'] as List)
        ?.map(
            (e) => e == null ? null : Image.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..name = json['name'] as String
    ..type = json['type'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$AlbumSimpleToJson(AlbumSimple instance) =>
    <String, dynamic>{
      'album_type': instance.albumType,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

Copyright _$CopyrightFromJson(Map<String, dynamic> json) {
  return Copyright()
    ..text = json['text'] as String
    ..type = json['type'] as String;
}

Map<String, dynamic> _$CopyrightToJson(Copyright instance) => <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
    };

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return Artist()
    ..externalUrls = json['external_urls'] == null
        ? null
        : ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..type = json['type'] as String
    ..uri = json['uri'] as String
    ..followers = json['followers'] == null
        ? null
        : Followers.fromJson(json['followers'] as Map<String, dynamic>)
    ..genres = (json['genres'] as List)?.map((e) => e as String)?.toList()
    ..images = (json['images'] as List)
        ?.map(
            (e) => e == null ? null : Image.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..popularity = json['popularity'] as int;
}

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
      'followers': instance.followers,
      'genres': instance.genres,
      'images': instance.images,
      'popularity': instance.popularity,
    };

ArtistSimple _$ArtistSimpleFromJson(Map<String, dynamic> json) {
  return ArtistSimple()
    ..externalUrls = json['external_urls'] == null
        ? null
        : ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..type = json['type'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$ArtistSimpleToJson(ArtistSimple instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

AudioFeature _$AudioFeatureFromJson(Map<String, dynamic> json) {
  return AudioFeature()
    ..acousticness = (json['acousticness'] as num)?.toDouble()
    ..analysisUrl = json['analysis_url'] as String
    ..danceability = (json['danceability'] as num)?.toDouble()
    ..durationMs = json['duration_ms'] as int
    ..energy = (json['energy'] as num)?.toDouble()
    ..id = json['id'] as String
    ..instrumentalness = (json['instrumentalness'] as num)?.toDouble()
    ..key = json['key'] as int
    ..liveness = (json['liveness'] as num)?.toDouble()
    ..loudness = (json['loudness'] as num)?.toDouble()
    ..mode = json['mode'] as int
    ..speechiness = (json['speechiness'] as num)?.toDouble()
    ..tempo = (json['tempo'] as num)?.toDouble()
    ..timeSignature = json['time_signature'] as int
    ..trackHref = json['track_href'] as String
    ..type = json['type'] as String
    ..uri = json['uri'] as String
    ..valence = (json['valence'] as num)?.toDouble();
}

Map<String, dynamic> _$AudioFeatureToJson(AudioFeature instance) =>
    <String, dynamic>{
      'acousticness': instance.acousticness,
      'analysis_url': instance.analysisUrl,
      'danceability': instance.danceability,
      'duration_ms': instance.durationMs,
      'energy': instance.energy,
      'id': instance.id,
      'instrumentalness': instance.instrumentalness,
      'key': instance.key,
      'liveness': instance.liveness,
      'loudness': instance.loudness,
      'mode': instance.mode,
      'speechiness': instance.speechiness,
      'tempo': instance.tempo,
      'time_signature': instance.timeSignature,
      'track_href': instance.trackHref,
      'type': instance.type,
      'uri': instance.uri,
      'valence': instance.valence,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category()
    ..href = json['href'] as String
    ..icons = (json['icons'] as List)
        ?.map(
            (e) => e == null ? null : Image.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'href': instance.href,
      'icons': instance.icons,
      'id': instance.id,
      'name': instance.name,
    };

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return Device()
    ..id = json['id'] as String
    ..isActive = json['is_active'] as bool ?? false
    ..isPrivateSession = json['is_private_session'] as bool ?? false
    ..isRestricted = json['is_restricted'] as bool ?? false
    ..name = json['name'] as String
    ..type = _$enumDecodeNullable(_$DeviceTypeEnumMap, json['type'])
    ..volumePercent = json['volume_percent'] as int;
}

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_private_session': instance.isPrivateSession,
      'is_restricted': instance.isRestricted,
      'name': instance.name,
      'type': _$DeviceTypeEnumMap[instance.type],
      'volume_percent': instance.volumePercent,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$DeviceTypeEnumMap = {
  DeviceType.Computer: 'Computer',
  DeviceType.Tablet: 'Tablet',
  DeviceType.Smartphone: 'Smartphone',
  DeviceType.Speaker: 'Speaker',
  DeviceType.TV: 'TV',
  DeviceType.AVR: 'AVR',
  DeviceType.STB: 'STB',
  DeviceType.AudioDongle: 'AudioDongle',
  DeviceType.GameConsole: 'GameConsole',
  DeviceType.CastVideo: 'CastVideo',
  DeviceType.CastAudio: 'CastAudio',
  DeviceType.Automobile: 'Automobile',
  DeviceType.Unknown: 'Unknown',
};

SpotifyError _$SpotifyErrorFromJson(Map<String, dynamic> json) {
  return SpotifyError()
    ..status = json['status'] as int
    ..message = json['message'] as String;
}

Map<String, dynamic> _$SpotifyErrorToJson(SpotifyError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

Followers _$FollowersFromJson(Map<String, dynamic> json) {
  return Followers()
    ..href = json['href'] as String
    ..total = json['total'] as int;
}

Map<String, dynamic> _$FollowersToJson(Followers instance) => <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

Image _$ImageFromJson(Map<String, dynamic> json) {
  return Image()
    ..height = json['height'] as int
    ..width = json['width'] as int
    ..url = json['url'] as String;
}

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'url': instance.url,
    };

Paging<T> _$PagingFromJson<T>(Map<String, dynamic> json) {
  return Paging<T>()
    ..href = json['href'] as String
    ..itemsNative = itemsNativeFromJson(json['items'] as List)
    ..limit = json['limit'] as int
    ..next = json['next'] as String
    ..offset = json['offset'] as int
    ..previous = json['previous'] as String
    ..total = json['total'] as int;
}

Map<String, dynamic> _$PagingToJson<T>(Paging<T> instance) => <String, dynamic>{
      'href': instance.href,
      'items': itemsNativeToJson(instance.itemsNative),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return Player()
    ..timestamp = json['timestamp'] as int
    ..context = json['context'] == null
        ? null
        : PlayerContext.fromJson(json['context'] as Map<String, dynamic>)
    ..progress_ms = json['progress_ms'] as int
    ..item = json['item'] == null
        ? null
        : Track.fromJson(json['item'] as Map<String, dynamic>)
    ..currently_playing_type = json['currently_playing_type'] as String
    ..is_playing = json['is_playing'] as bool;
}

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'timestamp': instance.timestamp,
      'context': instance.context,
      'progress_ms': instance.progress_ms,
      'item': instance.item,
      'currently_playing_type': instance.currently_playing_type,
      'is_playing': instance.is_playing,
    };

PlayerContext _$PlayerContextFromJson(Map<String, dynamic> json) {
  return PlayerContext()
    ..external_urls = json['external_urls'] == null
        ? null
        : ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..type = json['type'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$PlayerContextToJson(PlayerContext instance) =>
    <String, dynamic>{
      'external_urls': instance.external_urls,
      'href': instance.href,
      'type': instance.type,
      'uri': instance.uri,
    };

Playlist _$PlaylistFromJson(Map<String, dynamic> json) {
  return Playlist()
    ..collaborative = json['collaborative'] as bool
    ..description = json['description'] as String
    ..externalUrls = json['external_urls'] == null
        ? null
        : ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>)
    ..followers = json['followers'] == null
        ? null
        : Followers.fromJson(json['followers'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..images = (json['images'] as List)
        ?.map(
            (e) => e == null ? null : Image.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..name = json['name'] as String
    ..owner = json['owner'] == null
        ? null
        : User.fromJson(json['owner'] as Map<String, dynamic>)
    ..public = json['public'] as bool
    ..snapshotId = json['snapshot_id'] as String
    ..tracks = json['tracks'] == null
        ? null
        : Paging.fromJson(json['tracks'] as Map<String, dynamic>)
    ..type = json['type'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$PlaylistToJson(Playlist instance) => <String, dynamic>{
      'collaborative': instance.collaborative,
      'description': instance.description,
      'external_urls': instance.externalUrls,
      'followers': instance.followers,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'owner': instance.owner,
      'public': instance.public,
      'snapshot_id': instance.snapshotId,
      'tracks': instance.tracks,
      'type': instance.type,
      'uri': instance.uri,
    };

PlaylistSimple _$PlaylistSimpleFromJson(Map<String, dynamic> json) {
  return PlaylistSimple()
    ..collaborative = json['collaborative'] as bool
    ..externalUrls = json['external_urls'] == null
        ? null
        : ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..images = (json['images'] as List)
        ?.map(
            (e) => e == null ? null : Image.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..name = json['name'] as String
    ..owner = json['owner'] == null
        ? null
        : User.fromJson(json['owner'] as Map<String, dynamic>)
    ..public = json['public'] as bool
    ..snapshotId = json['snapshot_id'] as String
    ..tracksLink = json['tracks'] == null
        ? null
        : TracksLink.fromJson(json['tracks'] as Map<String, dynamic>)
    ..type = json['type'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$PlaylistSimpleToJson(PlaylistSimple instance) =>
    <String, dynamic>{
      'collaborative': instance.collaborative,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'owner': instance.owner,
      'public': instance.public,
      'snapshot_id': instance.snapshotId,
      'tracks': instance.tracksLink,
      'type': instance.type,
      'uri': instance.uri,
    };

PlaylistsFeatured _$PlaylistsFeaturedFromJson(Map<String, dynamic> json) {
  return PlaylistsFeatured()..message = json['message'] as String;
}

Map<String, dynamic> _$PlaylistsFeaturedToJson(PlaylistsFeatured instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

PlaylistTrack _$PlaylistTrackFromJson(Map<String, dynamic> json) {
  return PlaylistTrack()
    ..addedAt = json['added_at'] == null
        ? null
        : DateTime.parse(json['added_at'] as String)
    ..addedBy = json['added_by'] == null
        ? null
        : UserPublic.fromJson(json['added_by'] as Map<String, dynamic>)
    ..isLocal = json['is_local'] as bool
    ..track = json['track'] == null
        ? null
        : Track.fromJson(json['track'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PlaylistTrackToJson(PlaylistTrack instance) =>
    <String, dynamic>{
      'added_at': instance.addedAt?.toIso8601String(),
      'added_by': instance.addedBy,
      'is_local': instance.isLocal,
      'track': instance.track,
    };

Recommendations _$RecommendationsFromJson(Map<String, dynamic> json) {
  return Recommendations()
    ..seeds = (json['seeds'] as List)
        ?.map((e) => e == null
            ? null
            : RecommendationsSeed.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..tracks = (json['tracks'] as List)
        ?.map((e) =>
            e == null ? null : TrackSimple.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$RecommendationsToJson(Recommendations instance) =>
    <String, dynamic>{
      'seeds': instance.seeds,
      'tracks': instance.tracks,
    };

RecommendationsSeed _$RecommendationsSeedFromJson(Map<String, dynamic> json) {
  return RecommendationsSeed()
    ..afterFilteringSize = json['afterFilteringSize'] as int
    ..afterRelinkingSize = json['afterRelinkingSize'] as int
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..initialPoolSize = json['initialPoolSize'] as int
    ..type = json['type'] as String;
}

Map<String, dynamic> _$RecommendationsSeedToJson(
        RecommendationsSeed instance) =>
    <String, dynamic>{
      'afterFilteringSize': instance.afterFilteringSize,
      'afterRelinkingSize': instance.afterRelinkingSize,
      'href': instance.href,
      'id': instance.id,
      'initialPoolSize': instance.initialPoolSize,
      'type': instance.type,
    };

Track _$TrackFromJson(Map<String, dynamic> json) {
  return Track()
    ..album = json['album'] == null
        ? null
        : AlbumSimple.fromJson(json['album'] as Map<String, dynamic>)
    ..artists = (json['artists'] as List)
        ?.map((e) =>
            e == null ? null : Artist.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..availableMarkets =
        (json['available_markets'] as List)?.map((e) => e as String)?.toList()
    ..discNumber = json['disc_number'] as int
    ..durationMs = json['duration_ms'] as int
    ..explicit = json['explicit'] as bool
    ..externalIds = json['external_ids'] == null
        ? null
        : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>)
    ..externalUrls = json['external_urls'] == null
        ? null
        : ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..isPlayable = json['is_playable'] as bool
    ..linkedFrom = json['linked_from'] == null
        ? null
        : TrackLink.fromJson(json['linked_from'] as Map<String, dynamic>)
    ..name = json['name'] as String
    ..popularity = json['popularity'] as int
    ..previewUrl = json['preview_url'] as String
    ..trackNumber = json['track_number'] as int
    ..type = json['type'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$TrackToJson(Track instance) => <String, dynamic>{
      'album': instance.album,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_ids': instance.externalIds,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'is_playable': instance.isPlayable,
      'linked_from': instance.linkedFrom,
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
    };

TrackSimple _$TrackSimpleFromJson(Map<String, dynamic> json) {
  return TrackSimple()
    ..artists = (json['artists'] as List)
        ?.map((e) =>
            e == null ? null : Artist.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..availableMarkets =
        (json['available_markets'] as List)?.map((e) => e as String)?.toList()
    ..discNumber = json['disc_number'] as int
    ..durationMs = json['duration_ms'] as int
    ..explicit = json['explicit'] as bool
    ..externalUrls = json['external_urls'] == null
        ? null
        : ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..isPlayable = json['is_playable'] as bool
    ..linkedFrom = json['linked_from'] == null
        ? null
        : TrackLink.fromJson(json['linked_from'] as Map<String, dynamic>)
    ..name = json['name'] as String
    ..previewUrl = json['preview_url'] as String
    ..trackNumber = json['track_number'] as int
    ..type = json['type'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$TrackSimpleToJson(TrackSimple instance) =>
    <String, dynamic>{
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'is_playable': instance.isPlayable,
      'linked_from': instance.linkedFrom,
      'name': instance.name,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
    };

TrackSaved _$TrackSavedFromJson(Map<String, dynamic> json) {
  return TrackSaved()
    ..addedAt = json['added_at'] == null
        ? null
        : DateTime.parse(json['added_at'] as String)
    ..track = json['track'] == null
        ? null
        : Track.fromJson(json['track'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TrackSavedToJson(TrackSaved instance) =>
    <String, dynamic>{
      'added_at': instance.addedAt?.toIso8601String(),
      'track': instance.track,
    };

TrackLink _$TrackLinkFromJson(Map<String, dynamic> json) {
  return TrackLink()
    ..externalUrls = (json['external_urls'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..type = json['type'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$TrackLinkToJson(TrackLink instance) => <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
    };

TracksLink _$TracksLinkFromJson(Map<String, dynamic> json) {
  return TracksLink()
    ..href = json['href'] as String
    ..total = json['total'] as int;
}

Map<String, dynamic> _$TracksLinkToJson(TracksLink instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..birthdate = json['birthdate'] as String
    ..country = json['country'] as String
    ..displayName = json['display_name'] as String
    ..email = json['email'] as String
    ..followers = json['followers'] == null
        ? null
        : Followers.fromJson(json['followers'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..images = (json['images'] as List)
        ?.map(
            (e) => e == null ? null : Image.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..product = json['product'] as String
    ..type = json['type'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'birthdate': instance.birthdate,
      'country': instance.country,
      'display_name': instance.displayName,
      'email': instance.email,
      'followers': instance.followers,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'product': instance.product,
      'type': instance.type,
      'uri': instance.uri,
    };

UserPublic _$UserPublicFromJson(Map<String, dynamic> json) {
  return UserPublic()
    ..displayName = json['display_name'] as String
    ..followers = json['followers'] == null
        ? null
        : Followers.fromJson(json['followers'] as Map<String, dynamic>)
    ..href = json['href'] as String
    ..id = json['id'] as String
    ..images = (json['images'] as List)
        ?.map(
            (e) => e == null ? null : Image.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..type = json['type'] as String
    ..uri = json['uri'] as String;
}

Map<String, dynamic> _$UserPublicToJson(UserPublic instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'followers': instance.followers,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'type': instance.type,
      'uri': instance.uri,
    };
