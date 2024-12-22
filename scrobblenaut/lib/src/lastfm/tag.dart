//                                                              //
// Scrobblenaut - A deadly simple Last.FM API Wrapper for Dart. //
//                  Copyright (c) 2020 Nebulino                 //
//                                                              //

part of '../lastfm.dart';

/// This object represents a tag.
@JsonSerializable(includeIfNull: false)
class Tag {
  /// The tag name.
  @JsonKey(name: 'name')
  String name;

  // LastFM url of the tag.
  @JsonKey(name: 'url')
  String? url;

  /// The usage number of the tag.
  @JsonKey(name: 'count', fromJson: LastFMValueNormalizer.numberToInt)
  int? count;

  /// The total number of usage of this tag from a user.
  @JsonKey(name: 'total', fromJson: LastFMValueNormalizer.numberToInt)
  int? total;

  /// The total number of usage of this tag.
  @JsonKey(name: 'reach', fromJson: LastFMValueNormalizer.numberToInt)
  int? reach;

  /// The number of usage applied from a user.
  @JsonKey(name: 'taggings', fromJson: LastFMValueNormalizer.numberToInt)
  int? taggings;

  /// If True, this tag can be used as a Radio Station.
  @JsonKey(name: 'streamable', fromJson: LastFMValueNormalizer.numberToBool)
  bool? streamable;

  /// The wiki of the tag.
  @JsonKey(name: 'wiki')
  Wiki? wiki;

  Tag({
    required this.name,
    this.url,
    this.count,
    this.total,
    this.reach,
    this.taggings,
    this.streamable,
    this.wiki,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  Map<String, dynamic> toJson() => _$TagToJson(this);
}
