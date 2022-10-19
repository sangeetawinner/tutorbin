import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/product/product_detail_model.dart';
import '../../local_storage/shared_pref.dart';

class ProductWidget extends StatefulWidget {
  ProductWidget({required this.productsList, super.key});
  final List<ProductDetailModel> productsList;

  @override
  State<StatefulWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
Future<String> bestSeller() async{
 final orderedList= await SharedPreferenceData().getData();
 int countInitial=0;
 String bestSeller='';

    if(orderedList.length!=0){
    for(int i=0;i<orderedList.length;i++) {
      count = orderedList.where((e) =>
      e.name == orderedList[i].name).length;
      if (countInitial < count) {
        setState(() {
          countInitial = count;
          bestSeller = orderedList[i].name;
        });
      }
    }
    }


  return bestSeller;
}

  int selectedProducrIndex = -1;
  int count = 0;

  void initState(){
    bestSeller();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: widget.productsList
          .asMap()
          .map((i, product) => MapEntry(
              i,
              product.instock
                  ? GestureDetector(
                      onTap: () {

                        setState(() {
                          selectedProducrIndex =
                              selectedProducrIndex != i ? i : -1;
                          count=0;
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border(
                              // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.grey),
                            ),
                            color: selectedProducrIndex == i
                                ? Colors.green
                                : Colors.grey.shade50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(product.name),
                              if(bestSeller==product.name) Text('BestSeller'),
                              selectedProducrIndex == i
                                  ? Container(
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32.0),
                                            side: BorderSide(
                                                width: 1,
                                                color: Colors.orange)),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  count++;
                                                });
                                              },
                                              child: Icon(Icons.add)),
                                          Container(
                                            padding: EdgeInsets.all(3),
                                            decoration: new BoxDecoration(
                                              color: Colors.orange,
                                              shape: BoxShape.circle,
                                            ),
                                            child: selectedProducrIndex == i
                                                ? Text(
                                                    count.toString(),
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )
                                                : Text(
                                                    '0',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                          ),
                                          GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(count!=0)
                                                  count--;
                                                });
                                              },
                                              child: Icon(Icons.remove))
                                        ],
                                      ),
                                    )
                                  : Container(
                                      width: 50,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32.0),
                                            side: BorderSide(
                                                width: 1,
                                                color: Colors.orange)),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Add',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orangeAccent),
                                        ),
                                      ),
                                    ),
                            ],
                          )),
                    )
                  : const SizedBox()))
          .values
          .toList(),
    );
  }
}
