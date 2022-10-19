import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product_detail_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';



@freezed
 class CategoryModel with _$CategoryModel {
  const factory CategoryModel({

    required List<ProductDetailModel> productDetail,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}