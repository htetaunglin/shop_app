// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Items> _$itemsSerializer = new _$ItemsSerializer();

class _$ItemsSerializer implements StructuredSerializer<Items> {
  @override
  final Iterable<Type> types = const [Items, _$Items];
  @override
  final String wireName = 'Items';

  @override
  Iterable<Object> serialize(Serializers serializers, Items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Item)])),
    ];

    return result;
  }

  @override
  Items deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Item)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Items extends Items {
  @override
  final String message;
  @override
  final BuiltList<Item> data;

  factory _$Items([void Function(ItemsBuilder) updates]) =>
      (new ItemsBuilder()..update(updates)).build();

  _$Items._({this.message, this.data}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('Items', 'message');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('Items', 'data');
    }
  }

  @override
  Items rebuild(void Function(ItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsBuilder toBuilder() => new ItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Items && message == other.message && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Items')
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ItemsBuilder implements Builder<Items, ItemsBuilder> {
  _$Items _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<Item> _data;
  ListBuilder<Item> get data => _$this._data ??= new ListBuilder<Item>();
  set data(ListBuilder<Item> data) => _$this._data = data;

  ItemsBuilder();

  ItemsBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Items other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Items;
  }

  @override
  void update(void Function(ItemsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Items build() {
    _$Items _$result;
    try {
      _$result = _$v ?? new _$Items._(message: message, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
