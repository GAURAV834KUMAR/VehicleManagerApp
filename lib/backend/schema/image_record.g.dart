// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageRecord> _$imageRecordSerializer = new _$ImageRecordSerializer();

class _$ImageRecordSerializer implements StructuredSerializer<ImageRecord> {
  @override
  final Iterable<Type> types = const [ImageRecord, _$ImageRecord];
  @override
  final String wireName = 'ImageRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ImageRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageRecord extends ImageRecord {
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? userid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImageRecord([void Function(ImageRecordBuilder)? updates]) =>
      (new ImageRecordBuilder()..update(updates))._build();

  _$ImageRecord._({this.image, this.userid, this.ffRef}) : super._();

  @override
  ImageRecord rebuild(void Function(ImageRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageRecordBuilder toBuilder() => new ImageRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageRecord &&
        image == other.image &&
        userid == other.userid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, image.hashCode), userid.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageRecord')
          ..add('image', image)
          ..add('userid', userid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImageRecordBuilder implements Builder<ImageRecord, ImageRecordBuilder> {
  _$ImageRecord? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _userid;
  DocumentReference<Object?>? get userid => _$this._userid;
  set userid(DocumentReference<Object?>? userid) => _$this._userid = userid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImageRecordBuilder() {
    ImageRecord._initializeBuilder(this);
  }

  ImageRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _userid = $v.userid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageRecord;
  }

  @override
  void update(void Function(ImageRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageRecord build() => _build();

  _$ImageRecord _build() {
    final _$result =
        _$v ?? new _$ImageRecord._(image: image, userid: userid, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
