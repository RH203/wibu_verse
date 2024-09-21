// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation_anime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecommendationAnime _$RecommendationAnimeFromJson(Map<String, dynamic> json) {
  return _RecommendationAnime.fromJson(json);
}

/// @nodoc
mixin _$RecommendationAnime {
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  num get malId => throw _privateConstructorUsedError;

  /// Serializes this RecommendationAnime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecommendationAnime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationAnimeCopyWith<RecommendationAnime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationAnimeCopyWith<$Res> {
  factory $RecommendationAnimeCopyWith(
          RecommendationAnime value, $Res Function(RecommendationAnime) then) =
      _$RecommendationAnimeCopyWithImpl<$Res, RecommendationAnime>;
  @useResult
  $Res call({String title, String imageUrl, num malId});
}

/// @nodoc
class _$RecommendationAnimeCopyWithImpl<$Res, $Val extends RecommendationAnime>
    implements $RecommendationAnimeCopyWith<$Res> {
  _$RecommendationAnimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationAnime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? malId = null,
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
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationAnimeImplCopyWith<$Res>
    implements $RecommendationAnimeCopyWith<$Res> {
  factory _$$RecommendationAnimeImplCopyWith(_$RecommendationAnimeImpl value,
          $Res Function(_$RecommendationAnimeImpl) then) =
      __$$RecommendationAnimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imageUrl, num malId});
}

/// @nodoc
class __$$RecommendationAnimeImplCopyWithImpl<$Res>
    extends _$RecommendationAnimeCopyWithImpl<$Res, _$RecommendationAnimeImpl>
    implements _$$RecommendationAnimeImplCopyWith<$Res> {
  __$$RecommendationAnimeImplCopyWithImpl(_$RecommendationAnimeImpl _value,
      $Res Function(_$RecommendationAnimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendationAnime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? malId = null,
  }) {
    return _then(_$RecommendationAnimeImpl(
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
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationAnimeImpl implements _RecommendationAnime {
  const _$RecommendationAnimeImpl(
      {required this.title, required this.imageUrl, required this.malId});

  factory _$RecommendationAnimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationAnimeImplFromJson(json);

  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final num malId;

  @override
  String toString() {
    return 'RecommendationAnime(title: $title, imageUrl: $imageUrl, malId: $malId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationAnimeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.malId, malId) || other.malId == malId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, imageUrl, malId);

  /// Create a copy of RecommendationAnime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationAnimeImplCopyWith<_$RecommendationAnimeImpl> get copyWith =>
      __$$RecommendationAnimeImplCopyWithImpl<_$RecommendationAnimeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationAnimeImplToJson(
      this,
    );
  }
}

abstract class _RecommendationAnime implements RecommendationAnime {
  const factory _RecommendationAnime(
      {required final String title,
      required final String imageUrl,
      required final num malId}) = _$RecommendationAnimeImpl;

  factory _RecommendationAnime.fromJson(Map<String, dynamic> json) =
      _$RecommendationAnimeImpl.fromJson;

  @override
  String get title;
  @override
  String get imageUrl;
  @override
  num get malId;

  /// Create a copy of RecommendationAnime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationAnimeImplCopyWith<_$RecommendationAnimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
