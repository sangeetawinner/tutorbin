// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailModel _$ProductDetailModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailModel {
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get instock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailModelCopyWith<ProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailModelCopyWith<$Res> {
  factory $ProductDetailModelCopyWith(
          ProductDetailModel value, $Res Function(ProductDetailModel) then) =
      _$ProductDetailModelCopyWithImpl<$Res>;
  $Res call({String name, int price, bool instock});
}

/// @nodoc
class _$ProductDetailModelCopyWithImpl<$Res>
    implements $ProductDetailModelCopyWith<$Res> {
  _$ProductDetailModelCopyWithImpl(this._value, this._then);

  final ProductDetailModel _value;
  // ignore: unused_field
  final $Res Function(ProductDetailModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? instock = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      instock: instock == freezed
          ? _value.instock
          : instock // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductDetailModelCopyWith<$Res>
    implements $ProductDetailModelCopyWith<$Res> {
  factory _$$_ProductDetailModelCopyWith(_$_ProductDetailModel value,
          $Res Function(_$_ProductDetailModel) then) =
      __$$_ProductDetailModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, int price, bool instock});
}

/// @nodoc
class __$$_ProductDetailModelCopyWithImpl<$Res>
    extends _$ProductDetailModelCopyWithImpl<$Res>
    implements _$$_ProductDetailModelCopyWith<$Res> {
  __$$_ProductDetailModelCopyWithImpl(
      _$_ProductDetailModel _value, $Res Function(_$_ProductDetailModel) _then)
      : super(_value, (v) => _then(v as _$_ProductDetailModel));

  @override
  _$_ProductDetailModel get _value => super._value as _$_ProductDetailModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? instock = freezed,
  }) {
    return _then(_$_ProductDetailModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      instock: instock == freezed
          ? _value.instock
          : instock // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailModel implements _ProductDetailModel {
  const _$_ProductDetailModel(
      {required this.name, required this.price, required this.instock});

  factory _$_ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailModelFromJson(json);

  @override
  final String name;
  @override
  final int price;
  @override
  final bool instock;

  @override
  String toString() {
    return 'ProductDetailModel(name: $name, price: $price, instock: $instock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.instock, instock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(instock));

  @JsonKey(ignore: true)
  @override
  _$$_ProductDetailModelCopyWith<_$_ProductDetailModel> get copyWith =>
      __$$_ProductDetailModelCopyWithImpl<_$_ProductDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailModelToJson(
      this,
    );
  }
}

abstract class _ProductDetailModel implements ProductDetailModel {
  const factory _ProductDetailModel(
      {required final String name,
      required final int price,
      required final bool instock}) = _$_ProductDetailModel;

  factory _ProductDetailModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailModel.fromJson;

  @override
  String get name;
  @override
  int get price;
  @override
  bool get instock;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailModelCopyWith<_$_ProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
