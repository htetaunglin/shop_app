// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Category> _$categorySerializer = new _$CategorySerializer();

class _$CategorySerializer implements StructuredSerializer<Category> {
  @override
  final Iterable<Type> types = const [Category, _$Category];
  @override
  final String wireName = 'Category';

  @override
  Iterable<Object> serialize(Serializers serializers, Category object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Category deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Category extends Category {
  @override
  final String id;
  @override
  final String category;
  @override
  final String description;
  @override
  final String image;

  factory _$Category([void Function(CategoryBuilder) updates]) =>
      (new CategoryBuilder()..update(updates)).build();

  _$Category._({this.id, this.category, this.description, this.image})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Category', 'id');
    }
    if (category == null) {
      throw new BuiltValueNullFieldError('Category', 'category');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Category', 'description');
    }
    if (image == null) {
      throw new BuiltValueNullFieldError('Category', 'image');
    }
  }

  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => new CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        id == other.id &&
        category == other.category &&
        description == other.description &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), category.hashCode), description.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Category')
          ..add('id', id)
          ..add('category', category)
          ..add('description', description)
          ..add('image', image))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  CategoryBuilder();

  CategoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _category = _$v.category;
      _description = _$v.description;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Category other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Category build() {
    final _$result = _$v ??
        new _$Category._(
            id: id, category: category, description: description, image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
