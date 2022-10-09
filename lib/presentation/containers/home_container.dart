import 'package:assignment/business_logic/category_cubit.dart';
import 'package:assignment/business_logic/category_state.dart';
import 'package:assignment/data/repository/category_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../local_storage/shared_pref.dart';
import '../widgets/product_widget.dart';

class HomeContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {

  int selectedIndex = -1;
  void saveData(product){
    SharedPreferenceData().savedata(product);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocProvider(
          create: (context) =>
              CategoryCubit(categoryRepository: CategoryRepository())
                ..getCategories(),
          child: BlocBuilder<CategoryCubit, CategoryState>(
              builder: (context, state) {
            return state.selectedCategoryState.maybeWhen(
              loadedState: ((loadedProducts) {
                return Container(
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder (

                        side: BorderSide(
                            width: 1,
                            color: Colors.grey
                        )
                    ),),
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: loadedProducts
                        .asMap()
                        .map((i, data) => MapEntry(
                            i,
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = selectedIndex != i ? i : -1;
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration:BoxDecoration(
                                      border: Border(
                                       // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
                                        bottom: BorderSide(width: 1.0, color: Colors.grey),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(data.categoryName,style: TextStyle(fontWeight: FontWeight.w500),),
                                        Row(
                                          children: [
                                            Text(
                                              data.productDetail.length
                                                  .toString(),
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Icon(
                                              Icons.arrow_downward_outlined,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  if (selectedIndex == i)
                                    ProductWidget(
                                      productsList: data.productDetail,

                                    ),
                                ],
                              ),
                            )))
                        .values
                        .toList(),
                  ),
                );
              }),
              orElse: () => Container(
                color: Colors.white,
              ),
            );
          }),
        ),
      ),
      bottomNavigationBar:SizedBox(
        width: 100,
        height: 50,
        child: ElevatedButton(
        style:ElevatedButton.styleFrom(
            primary: Colors.orange,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            textStyle: TextStyle(

                fontWeight: FontWeight.bold)
        ) ,
          onPressed: (){},
          child: Text('Place Order'),
        ),
      ) ,
    );
  }
}
