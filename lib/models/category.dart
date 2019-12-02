import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category.g.dart';

abstract class Category implements Built<Category, CategoryBuilder> {
  String get id;
  String get category;
  String get description;
  String get image;

  Category._();

  factory Category([updates(CategoryBuilder b)]) = _$Category;

  static Serializer<Category> get serializer => _$categorySerializer;
}
