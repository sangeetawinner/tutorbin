import 'dart:async';

import 'package:assignment/data/models/product/product_detail_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Database{
create() async {
  final database = openDatabase(

      join(await getDatabasesPath(), 'order_placed_database.db'),

      onCreate: (db, version) {
  // Run the CREATE TABLE statement on the database.
  return db.execute(
  'CREATE TABLE orders(id INTEGER PRIMARY KEY,category_index INTEGER, name TEXT, count INTEGER)',
  );
  },
  // Set the version. This executes the onCreate function and provides a
  // path to perform database upgrades and downgrades.
  version: 1,
  );
}

Future<void> insertProduct(ProductDetailModel order,int count,int index) async {
  // Get a reference to the database.
  final db = await create().database;

  // Insert the Dog into the correct table. You might also specify the
  // `conflictAlgorithm` to use in case the same dog is inserted twice.
  //
  // In this case, replace any previous data.
  await db.insert(
    'orders',
    {
      'category_index':index,
      'name': order.name, 'count': count},

  );
}

Future<void> getMostOrdered() async {

  final db = await create().database;

  await await db.rawQuery('SELECT category_index,name, sum(count) FROM orders GROUP BY name order by count desc limit 3');
}
}