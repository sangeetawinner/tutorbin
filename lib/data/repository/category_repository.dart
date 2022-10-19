import 'dart:convert';

import 'package:assignment/data/models/product/product_detail_model.dart';
import 'package:flutter/services.dart';

import '../models/category/category_model.dart';

class CategoryRepository {
  Future<List<List<ProductDetailModel>>> getCategoriesList() async {
    final response = await rootBundle.loadString(
      "json/menu.json",
    );


    final  data = jsonDecode(response);
final List<List<ProductDetailModel>> catList=[];

for(int i=1;i<=6;i++){
  catList.add(List<ProductDetailModel>.from(
    data['cat$i'].map((productList) => ProductDetailModel.fromJson(productList)),
  ));
}

    return catList;
  }
}
