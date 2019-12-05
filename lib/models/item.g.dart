// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Item> _$itemSerializer = new _$ItemSerializer();

class _$ItemSerializer implements StructuredSerializer<Item> {
  @override
  final Iterable<Type> types = const [Item, _$Item];
  @override
  final String wireName = 'Item';

  @override
  Iterable<Object> serialize(Serializers serializers, Item object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'productimage',
      serializers.serialize(object.productimage,
          specifiedType: const FullType(String)),
      'saleprice',
      serializers.serialize(object.saleprice,
          specifiedType: const FullType(int)),
      'wholesalename',
      serializers.serialize(object.wholesalename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'pack',
      serializers.serialize(object.pack, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Item deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'productimage':
          result.productimage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'saleprice':
          result.saleprice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wholesalename':
          result.wholesalename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pack':
          result.pack = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Item extends Item {
  @override
  final String productimage;
  @override
  final int saleprice;
  @override
  final String wholesalename;
  @override
  final String name;
  @override
  final String pack;

  factory _$Item([void Function(ItemBuilder) updates]) =>
      (new ItemBuilder()..update(updates)).build();

  _$Item._(
      {this.productimage,
      this.saleprice,
      this.wholesalename,
      this.name,
      this.pack})
      : super._() {
    if (productimage == null) {
      throw new BuiltValueNullFieldError('Item', 'productimage');
    }
    if (saleprice == null) {
      throw new BuiltValueNullFieldError('Item', 'saleprice');
    }
    if (wholesalename == null) {
      throw new BuiltValueNullFieldError('Item', 'wholesalename');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Item', 'name');
    }
    if (pack == null) {
      throw new BuiltValueNullFieldError('Item', 'pack');
    }
  }

  @override
  Item rebuild(void Function(ItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemBuilder toBuilder() => new ItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Item &&
        productimage == other.productimage &&
        saleprice == other.saleprice &&
        wholesalename == other.wholesalename &&
        name == other.name &&
        pack == other.pack;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, productimage.hashCode), saleprice.hashCode),
                wholesalename.hashCode),
            name.hashCode),
        pack.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Item')
          ..add('productimage', productimage)
          ..add('saleprice', saleprice)
          ..add('wholesalename', wholesalename)
          ..add('name', name)
          ..add('pack', pack))
        .toString();
  }
}

class ItemBuilder implements Builder<Item, ItemBuilder> {
  _$Item _$v;

  String _productimage;
  String get productimage => _$this._productimage;
  set productimage(String productimage) => _$this._productimage = productimage;

  int _saleprice;
  int get saleprice => _$this._saleprice;
  set saleprice(int saleprice) => _$this._saleprice = saleprice;

  String _wholesalename;
  String get wholesalename => _$this._wholesalename;
  set wholesalename(String wholesalename) =>
      _$this._wholesalename = wholesalename;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _pack;
  String get pack => _$this._pack;
  set pack(String pack) => _$this._pack = pack;

  ItemBuilder();

  ItemBuilder get _$this {
    if (_$v != null) {
      _productimage = _$v.productimage;
      _saleprice = _$v.saleprice;
      _wholesalename = _$v.wholesalename;
      _name = _$v.name;
      _pack = _$v.pack;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Item other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Item;
  }

  @override
  void update(void Function(ItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Item build() {
    final _$result = _$v ??
        new _$Item._(
            productimage: productimage,
            saleprice: saleprice,
            wholesalename: wholesalename,
            name: name,
            pack: pack);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
