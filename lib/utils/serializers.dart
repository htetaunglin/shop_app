
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:shop_app/models/categories.dart';
import 'package:shop_app/models/category.dart';


part 'serializers.g.dart';

@SerializersFor(const [Category, Categories])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
