import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'item.g.dart';

abstract class Item implements Built<Item, ItemBuilder> {
  String get productimage;
  int get saleprice;
  String get wholesalename;
  String get name;
  String get pack;

  Item._();

  factory Item([void Function(ItemBuilder) updates]) = _$Item;

  static Serializer<Item> get serializer => _$itemSerializer;
}
