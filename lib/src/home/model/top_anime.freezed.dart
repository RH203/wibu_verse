// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_anime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopAnime _$TopAnimeFromJson(Map<String, dynamic> json) {
  return _TopAnime.fromJson(json);
}

/// @nodoc
mixin _$TopAnime {
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get malId => throw _privateConstructorUsedError;
  num get score => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;

  /// Serializes this TopAnime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopAnime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopAnimeCopyWith<TopAnime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAnimeCopyWith<$Res> {
  factory $TopAnimeCopyWith(TopAnime value, $Res Function(TopAnime) then) =
      _$TopAnimeCopyWithImpl<$Res, TopAnime>;
  @useResult
  $Res call({String title, String imageUrl, String malId, num score, int rank});
}

/// @nodoc
class _$TopAnimeCopyWithImpl<$Res, $Val extends TopAnime>
    implements $TopAnimeCopyWith<$Res> {
  _$TopAnimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopAnime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? malId = null,
    Object? score = null,
    Object? rank = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      malId: null == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as num,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopAnimeImplCopyWith<$Res>
    implements $TopAnimeCopyWith<$Res> {
  factory _$$TopAnimeImplCopyWith(
          _$TopAnimeImpl value, $Res Function(_$TopAnimeImpl) then) =
      __$$TopAnimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imageUrl, String malId, num score, int rank});
}

/// @nodoc
class __$$TopAnimeImplCopyWithImpl<$Res>
    extends _$TopAnimeCopyWithImpl<$Res, _$TopAnimeImpl>
    implements _$$TopAnimeImplCopyWith<$Res> {
  __$$TopAnimeImplCopyWithImpl(
      _$TopAnimeImpl _value, $Res Function(_$TopAnimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopAnime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? malId = null,
    Object? score = null,
    Object? rank = null,
  }) {
    return _then(_$TopAnimeImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      malId: null == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as num,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopAnimeImpl implements _TopAnime {
  const _$TopAnimeImpl(
      {required this.title,
      required this.imageUrl,
      required this.malId,
      required this.score,
      required this.rank});

  factory _$TopAnimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopAnimeImplFromJson(json);

  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String malId;
  @override
  final num score;
  @override
  final int rank;

  @override
  String toString() {
    return 'TopAnime(title: $title, imageUrl: $imageUrl, malId: $malId, score: $score, rank: $rank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAnimeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.malId, malId) || other.malId == malId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, imageUrl, malId, score, rank);

  /// Create a copy of TopAnime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopAnimeImplCopyWith<_$TopAnimeImpl> get copyWith =>
      __$$TopAnimeImplCopyWithImpl<_$TopAnimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopAnimeImplToJson(
      this,
    );
  }
}

abstract class _TopAnime implements TopAnime {
  const factory _TopAnime(
      {required final String title,
      required final String imageUrl,
      required final String malId,
      required final num score,
      required final int rank}) = _$TopAnimeImpl;

  factory _TopAnime.fromJson(Map<String, dynamic> json) =
      _$TopAnimeImpl.fromJson;

  @override
  String get title;
  @override
  String get imageUrl;
  @override
  String get malId;
  @override
  num get score;
  @override
  int get rank;

  /// Create a copy of TopAnime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopAnimeImplCopyWith<_$TopAnimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
