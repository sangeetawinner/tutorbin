import 'dart:convert';

import 'package:assignment/data/models/product/product_detail_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceData{
  List<ProductDetailModel> mostOrderedProducts=[];
  savedata(ProductDetailModel productDetailModel)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Encode and store data in SharedPreferences
    final String encodedData =productDetailModelToJson(productDetailModel);

    await prefs.setString('product_key', encodedData);

  }
 Future<List<ProductDetailModel>> getData() async{
    // Fetch and decode data
   final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String productString = await prefs.getString('product_key')??'';

    final ProductDetailModel productDetail =productDetailModelFromJson(productString);

    mostOrderedProducts.add(productDetail);
    return mostOrderedProducts;
  }
}
