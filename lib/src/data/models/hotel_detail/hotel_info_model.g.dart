// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_info_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HotelInfoModel> _$hotelInfoModelSerializer =
    new _$HotelInfoModelSerializer();
Serializer<AboutTheHotel> _$aboutTheHotelSerializer =
    new _$AboutTheHotelSerializer();

class _$HotelInfoModelSerializer
    implements StructuredSerializer<HotelInfoModel> {
  @override
  final Iterable<Type> types = const [HotelInfoModel, _$HotelInfoModel];
  @override
  final String wireName = 'HotelInfoModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, HotelInfoModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'adress',
      serializers.serialize(object.adress,
          specifiedType: const FullType(String)),
      'minimal_price',
      serializers.serialize(object.minimalPrice,
          specifiedType: const FullType(int)),
      'price_for_it',
      serializers.serialize(object.priceForIt,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating, specifiedType: const FullType(int)),
      'rating_name',
      serializers.serialize(object.ratingName,
          specifiedType: const FullType(String)),
      'image_urls',
      serializers.serialize(object.imageUrls,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'about_the_hotel',
      serializers.serialize(object.aboutTheHotel,
          specifiedType: const FullType(AboutTheHotel)),
    ];

    return result;
  }

  @override
  HotelInfoModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HotelInfoModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'adress':
          result.adress = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'minimal_price':
          result.minimalPrice = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'price_for_it':
          result.priceForIt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rating_name':
          result.ratingName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image_urls':
          result.imageUrls.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'about_the_hotel':
          result.aboutTheHotel.replace(serializers.deserialize(value,
              specifiedType: const FullType(AboutTheHotel))! as AboutTheHotel);
          break;
      }
    }

    return result.build();
  }
}

class _$AboutTheHotelSerializer implements StructuredSerializer<AboutTheHotel> {
  @override
  final Iterable<Type> types = const [AboutTheHotel, _$AboutTheHotel];
  @override
  final String wireName = 'AboutTheHotel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AboutTheHotel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    return result;
  }

  @override
  AboutTheHotel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AboutTheHotelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'peculiarities':
          result.peculiarities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$HotelInfoModel extends HotelInfoModel {
  @override
  final int id;
  @override
  final String name;
  @override
  final String adress;
  @override
  final int minimalPrice;
  @override
  final String priceForIt;
  @override
  final int rating;
  @override
  final String ratingName;
  @override
  final BuiltList<String> imageUrls;
  @override
  final AboutTheHotel aboutTheHotel;

  factory _$HotelInfoModel([void Function(HotelInfoModelBuilder)? updates]) =>
      (new HotelInfoModelBuilder()..update(updates))._build();

  _$HotelInfoModel._(
      {required this.id,
      required this.name,
      required this.adress,
      required this.minimalPrice,
      required this.priceForIt,
      required this.rating,
      required this.ratingName,
      required this.imageUrls,
      required this.aboutTheHotel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'HotelInfoModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'HotelInfoModel', 'name');
    BuiltValueNullFieldError.checkNotNull(adress, r'HotelInfoModel', 'adress');
    BuiltValueNullFieldError.checkNotNull(
        minimalPrice, r'HotelInfoModel', 'minimalPrice');
    BuiltValueNullFieldError.checkNotNull(
        priceForIt, r'HotelInfoModel', 'priceForIt');
    BuiltValueNullFieldError.checkNotNull(rating, r'HotelInfoModel', 'rating');
    BuiltValueNullFieldError.checkNotNull(
        ratingName, r'HotelInfoModel', 'ratingName');
    BuiltValueNullFieldError.checkNotNull(
        imageUrls, r'HotelInfoModel', 'imageUrls');
    BuiltValueNullFieldError.checkNotNull(
        aboutTheHotel, r'HotelInfoModel', 'aboutTheHotel');
  }

  @override
  HotelInfoModel rebuild(void Function(HotelInfoModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HotelInfoModelBuilder toBuilder() =>
      new HotelInfoModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HotelInfoModel &&
        id == other.id &&
        name == other.name &&
        adress == other.adress &&
        minimalPrice == other.minimalPrice &&
        priceForIt == other.priceForIt &&
        rating == other.rating &&
        ratingName == other.ratingName &&
        imageUrls == other.imageUrls &&
        aboutTheHotel == other.aboutTheHotel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, adress.hashCode);
    _$hash = $jc(_$hash, minimalPrice.hashCode);
    _$hash = $jc(_$hash, priceForIt.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, ratingName.hashCode);
    _$hash = $jc(_$hash, imageUrls.hashCode);
    _$hash = $jc(_$hash, aboutTheHotel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HotelInfoModel')
          ..add('id', id)
          ..add('name', name)
          ..add('adress', adress)
          ..add('minimalPrice', minimalPrice)
          ..add('priceForIt', priceForIt)
          ..add('rating', rating)
          ..add('ratingName', ratingName)
          ..add('imageUrls', imageUrls)
          ..add('aboutTheHotel', aboutTheHotel))
        .toString();
  }
}

class HotelInfoModelBuilder
    implements Builder<HotelInfoModel, HotelInfoModelBuilder> {
  _$HotelInfoModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _adress;
  String? get adress => _$this._adress;
  set adress(String? adress) => _$this._adress = adress;

  int? _minimalPrice;
  int? get minimalPrice => _$this._minimalPrice;
  set minimalPrice(int? minimalPrice) => _$this._minimalPrice = minimalPrice;

  String? _priceForIt;
  String? get priceForIt => _$this._priceForIt;
  set priceForIt(String? priceForIt) => _$this._priceForIt = priceForIt;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  String? _ratingName;
  String? get ratingName => _$this._ratingName;
  set ratingName(String? ratingName) => _$this._ratingName = ratingName;

  ListBuilder<String>? _imageUrls;
  ListBuilder<String> get imageUrls =>
      _$this._imageUrls ??= new ListBuilder<String>();
  set imageUrls(ListBuilder<String>? imageUrls) =>
      _$this._imageUrls = imageUrls;

  AboutTheHotelBuilder? _aboutTheHotel;
  AboutTheHotelBuilder get aboutTheHotel =>
      _$this._aboutTheHotel ??= new AboutTheHotelBuilder();
  set aboutTheHotel(AboutTheHotelBuilder? aboutTheHotel) =>
      _$this._aboutTheHotel = aboutTheHotel;

  HotelInfoModelBuilder();

  HotelInfoModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _adress = $v.adress;
      _minimalPrice = $v.minimalPrice;
      _priceForIt = $v.priceForIt;
      _rating = $v.rating;
      _ratingName = $v.ratingName;
      _imageUrls = $v.imageUrls.toBuilder();
      _aboutTheHotel = $v.aboutTheHotel.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HotelInfoModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HotelInfoModel;
  }

  @override
  void update(void Function(HotelInfoModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HotelInfoModel build() => _build();

  _$HotelInfoModel _build() {
    _$HotelInfoModel _$result;
    try {
      _$result = _$v ??
          new _$HotelInfoModel._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'HotelInfoModel', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'HotelInfoModel', 'name'),
              adress: BuiltValueNullFieldError.checkNotNull(
                  adress, r'HotelInfoModel', 'adress'),
              minimalPrice: BuiltValueNullFieldError.checkNotNull(
                  minimalPrice, r'HotelInfoModel', 'minimalPrice'),
              priceForIt: BuiltValueNullFieldError.checkNotNull(
                  priceForIt, r'HotelInfoModel', 'priceForIt'),
              rating: BuiltValueNullFieldError.checkNotNull(
                  rating, r'HotelInfoModel', 'rating'),
              ratingName: BuiltValueNullFieldError.checkNotNull(
                  ratingName, r'HotelInfoModel', 'ratingName'),
              imageUrls: imageUrls.build(),
              aboutTheHotel: aboutTheHotel.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imageUrls';
        imageUrls.build();
        _$failedField = 'aboutTheHotel';
        aboutTheHotel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HotelInfoModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AboutTheHotel extends AboutTheHotel {
  @override
  final String? description;
  @override
  final BuiltList<String>? peculiarities;

  factory _$AboutTheHotel([void Function(AboutTheHotelBuilder)? updates]) =>
      (new AboutTheHotelBuilder()..update(updates))._build();

  _$AboutTheHotel._({this.description, this.peculiarities}) : super._();

  @override
  AboutTheHotel rebuild(void Function(AboutTheHotelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AboutTheHotelBuilder toBuilder() => new AboutTheHotelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AboutTheHotel &&
        description == other.description &&
        peculiarities == other.peculiarities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, peculiarities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AboutTheHotel')
          ..add('description', description)
          ..add('peculiarities', peculiarities))
        .toString();
  }
}

class AboutTheHotelBuilder
    implements Builder<AboutTheHotel, AboutTheHotelBuilder> {
  _$AboutTheHotel? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _peculiarities;
  ListBuilder<String> get peculiarities =>
      _$this._peculiarities ??= new ListBuilder<String>();
  set peculiarities(ListBuilder<String>? peculiarities) =>
      _$this._peculiarities = peculiarities;

  AboutTheHotelBuilder();

  AboutTheHotelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _peculiarities = $v.peculiarities?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AboutTheHotel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AboutTheHotel;
  }

  @override
  void update(void Function(AboutTheHotelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AboutTheHotel build() => _build();

  _$AboutTheHotel _build() {
    _$AboutTheHotel _$result;
    try {
      _$result = _$v ??
          new _$AboutTheHotel._(
              description: description, peculiarities: _peculiarities?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'peculiarities';
        _peculiarities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AboutTheHotel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
