// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_info_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RoomsInfoModel> _$roomsInfoModelSerializer =
    new _$RoomsInfoModelSerializer();
Serializer<Rooms> _$roomsSerializer = new _$RoomsSerializer();

class _$RoomsInfoModelSerializer
    implements StructuredSerializer<RoomsInfoModel> {
  @override
  final Iterable<Type> types = const [RoomsInfoModel, _$RoomsInfoModel];
  @override
  final String wireName = 'RoomsInfoModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, RoomsInfoModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rooms;
    if (value != null) {
      result
        ..add('rooms')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Rooms)])));
    }
    return result;
  }

  @override
  RoomsInfoModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoomsInfoModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rooms':
          result.rooms.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Rooms)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$RoomsSerializer implements StructuredSerializer<Rooms> {
  @override
  final Iterable<Type> types = const [Rooms, _$Rooms];
  @override
  final String wireName = 'Rooms';

  @override
  Iterable<Object?> serialize(Serializers serializers, Rooms object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pricePer;
    if (value != null) {
      result
        ..add('price_per')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.peculiarities;
    if (value != null) {
      result
        ..add('peculiarities')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.imageUrls;
    if (value != null) {
      result
        ..add('image_urls')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Rooms deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoomsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'price_per':
          result.pricePer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'peculiarities':
          result.peculiarities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'image_urls':
          result.imageUrls.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$RoomsInfoModel extends RoomsInfoModel {
  @override
  final BuiltList<Rooms>? rooms;

  factory _$RoomsInfoModel([void Function(RoomsInfoModelBuilder)? updates]) =>
      (new RoomsInfoModelBuilder()..update(updates))._build();

  _$RoomsInfoModel._({this.rooms}) : super._();

  @override
  RoomsInfoModel rebuild(void Function(RoomsInfoModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoomsInfoModelBuilder toBuilder() =>
      new RoomsInfoModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoomsInfoModel && rooms == other.rooms;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rooms.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RoomsInfoModel')..add('rooms', rooms))
        .toString();
  }
}

class RoomsInfoModelBuilder
    implements Builder<RoomsInfoModel, RoomsInfoModelBuilder> {
  _$RoomsInfoModel? _$v;

  ListBuilder<Rooms>? _rooms;
  ListBuilder<Rooms> get rooms => _$this._rooms ??= new ListBuilder<Rooms>();
  set rooms(ListBuilder<Rooms>? rooms) => _$this._rooms = rooms;

  RoomsInfoModelBuilder();

  RoomsInfoModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rooms = $v.rooms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoomsInfoModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RoomsInfoModel;
  }

  @override
  void update(void Function(RoomsInfoModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoomsInfoModel build() => _build();

  _$RoomsInfoModel _build() {
    _$RoomsInfoModel _$result;
    try {
      _$result = _$v ?? new _$RoomsInfoModel._(rooms: _rooms?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rooms';
        _rooms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RoomsInfoModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Rooms extends Rooms {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? price;
  @override
  final String? pricePer;
  @override
  final BuiltList<String>? peculiarities;
  @override
  final BuiltList<String>? imageUrls;

  factory _$Rooms([void Function(RoomsBuilder)? updates]) =>
      (new RoomsBuilder()..update(updates))._build();

  _$Rooms._(
      {this.id,
      this.name,
      this.price,
      this.pricePer,
      this.peculiarities,
      this.imageUrls})
      : super._();

  @override
  Rooms rebuild(void Function(RoomsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoomsBuilder toBuilder() => new RoomsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rooms &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        pricePer == other.pricePer &&
        peculiarities == other.peculiarities &&
        imageUrls == other.imageUrls;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, pricePer.hashCode);
    _$hash = $jc(_$hash, peculiarities.hashCode);
    _$hash = $jc(_$hash, imageUrls.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rooms')
          ..add('id', id)
          ..add('name', name)
          ..add('price', price)
          ..add('pricePer', pricePer)
          ..add('peculiarities', peculiarities)
          ..add('imageUrls', imageUrls))
        .toString();
  }
}

class RoomsBuilder implements Builder<Rooms, RoomsBuilder> {
  _$Rooms? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _pricePer;
  String? get pricePer => _$this._pricePer;
  set pricePer(String? pricePer) => _$this._pricePer = pricePer;

  ListBuilder<String>? _peculiarities;
  ListBuilder<String> get peculiarities =>
      _$this._peculiarities ??= new ListBuilder<String>();
  set peculiarities(ListBuilder<String>? peculiarities) =>
      _$this._peculiarities = peculiarities;

  ListBuilder<String>? _imageUrls;
  ListBuilder<String> get imageUrls =>
      _$this._imageUrls ??= new ListBuilder<String>();
  set imageUrls(ListBuilder<String>? imageUrls) =>
      _$this._imageUrls = imageUrls;

  RoomsBuilder();

  RoomsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _price = $v.price;
      _pricePer = $v.pricePer;
      _peculiarities = $v.peculiarities?.toBuilder();
      _imageUrls = $v.imageUrls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rooms other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Rooms;
  }

  @override
  void update(void Function(RoomsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rooms build() => _build();

  _$Rooms _build() {
    _$Rooms _$result;
    try {
      _$result = _$v ??
          new _$Rooms._(
              id: id,
              name: name,
              price: price,
              pricePer: pricePer,
              peculiarities: _peculiarities?.build(),
              imageUrls: _imageUrls?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'peculiarities';
        _peculiarities?.build();
        _$failedField = 'imageUrls';
        _imageUrls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Rooms', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
