// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailModel _$$_ProductDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailModel(
      name: json['name'] as String,
      price: json['price'] as int,
      instock: json['instock'] as bool,
    );

Map<String, dynamic> _$$_ProductDetailModelToJson(
        _$_ProductDetailModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'instock': instance.instock,
    };
