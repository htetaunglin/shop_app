import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:shop_app/models/item.dart';

part 'items.g.dart';

abstract class Items implements Built<Items, ItemsBuilder> {
  String get message;
  BuiltList<Item> get data;

  Items._();

  factory Items([void Function(ItemsBuilder) updates]) = _$Items;

  static Serializer<Items> get serializer => _$itemsSerializer;
}
