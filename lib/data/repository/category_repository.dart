import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/category/category_model.dart';

class CategoryRepository {
  Future<List<CategoryModel>> getCategoriesList() async {
    final response = await rootBundle.loadString(
      "json/menu.json",
    );


    final  data = jsonDecode(response);

    final List responseData=data['data'];

    return List<CategoryModel>.from(
      responseData.map((productList) => CategoryModel.fromJson(productList)),
    );
  }
}
