import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:shop_app/models/category.dart';

part 'categories.g.dart';

abstract class Categories implements Built<Categories, CategoriesBuilder> {
  BuiltList<Category> get category;

  Categories._();

  factory Categories([void Function(CategoriesBuilder) updates]) = _$Categories;

  static Serializer<Categories> get serializer => _$categoriesSerializer;
}
