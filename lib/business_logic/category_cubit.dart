import 'package:assignment/data/models/category/category_model.dart';
import 'package:assignment/data/models/product/product_detail_model.dart';
import 'package:assignment/data/repository/category_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState>{

  CategoryCubit({required this.categoryRepository}) :
        super(  CategoryState(selectedCategoryState: SelectedCategoryState.initial()));

  final CategoryRepository categoryRepository;


  Future<void> getCategories() async{
    try {
      emit( state.copyWith(selectedCategoryState: const SelectedCategoryState.initial()));
      final List<List<ProductDetailModel>> item = await categoryRepository.getCategoriesList();
      emit( state.copyWith(selectedCategoryState: SelectedCategoryState.loadedState(loadedProducts: item)));
    } catch (e) {
      emit(
        state.copyWith(selectedCategoryState:  const SelectedCategoryState.errorState()),
      );
    }
  }


}