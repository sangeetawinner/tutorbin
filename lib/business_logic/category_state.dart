import 'package:assignment/data/models/category/category_model.dart';
import 'package:assignment/data/models/product/product_detail_model.dart';
import 'package:equatable/equatable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_state.freezed.dart';

class CategoryState extends Equatable {
  final SelectedCategoryState selectedCategoryState;

  @override
  // TODO: implement props
  List<Object?> get props => [selectedCategoryState];

  CategoryState({required this.selectedCategoryState});
  CategoryState copyWith({SelectedCategoryState? selectedCategoryState}) =>
      CategoryState(
          selectedCategoryState:
              selectedCategoryState ?? this.selectedCategoryState);
}

@freezed
class SelectedCategoryState with _$SelectedCategoryState {
  const factory SelectedCategoryState.initial() = _InitialState;
  const factory SelectedCategoryState.inProgress() = _InProgress;
  const factory SelectedCategoryState.loadedState({
    required List<List<ProductDetailModel>> loadedProducts,
  }) = _LoadedState;
  const factory SelectedCategoryState.errorState() = _ErrorState;
}
