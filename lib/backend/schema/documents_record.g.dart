// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documents_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocumentsRecord> _$documentsRecordSerializer =
    new _$DocumentsRecordSerializer();

class _$DocumentsRecordSerializer
    implements StructuredSerializer<DocumentsRecord> {
  @override
  final Iterable<Type> types = const [DocumentsRecord, _$DocumentsRecord];
  @override
  final String wireName = 'DocumentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DocumentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sQLId;
    if (value != null) {
      result
        ..add('SQL_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.documentName;
    if (value != null) {
      result
        ..add('Document_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.docExpDate;
    if (value != null) {
      result
        ..add('Doc_exp_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.docNo;
    if (value != null) {
      result
        ..add('Doc_No')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('Created_Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.truckNo;
    if (value != null) {
      result
        ..add('truck_no')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('User_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.otherDoc;
    if (value != null) {
      result
        ..add('Other_Doc')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.idImage;
    if (value != null) {
      result
        ..add('id_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  DocumentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'SQL_id':
          result.sQLId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document_Name':
          result.documentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Doc_exp_date':
          result.docExpDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Doc_No':
          result.docNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Created_Time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'truck_no':
          result.truckNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'User_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Other_Doc':
          result.otherDoc = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'id_image':
          result.idImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$DocumentsRecord extends DocumentsRecord {
  @override
  final int? sQLId;
  @override
  final String? documentName;
  @override
  final DateTime? docExpDate;
  @override
  final String? docNo;
  @override
  final DateTime? createdTime;
  @override
  final String? truckNo;
  @override
  final DocumentReference<Object?>? userId;
  @override
  final bool? otherDoc;
  @override
  final String? idImage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DocumentsRecord([void Function(DocumentsRecordBuilder)? updates]) =>
      (new DocumentsRecordBuilder()..update(updates))._build();

  _$DocumentsRecord._(
      {this.sQLId,
      this.documentName,
      this.docExpDate,
      this.docNo,
      this.createdTime,
      this.truckNo,
      this.userId,
      this.otherDoc,
      this.idImage,
      this.ffRef})
      : super._();

  @override
  DocumentsRecord rebuild(void Function(DocumentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentsRecordBuilder toBuilder() =>
      new DocumentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentsRecord &&
        sQLId == other.sQLId &&
        documentName == other.documentName &&
        docExpDate == other.docExpDate &&
        docNo == other.docNo &&
        createdTime == other.createdTime &&
        truckNo == other.truckNo &&
        userId == other.userId &&
        otherDoc == other.otherDoc &&
        idImage == other.idImage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, sQLId.hashCode),
                                        documentName.hashCode),
                                    docExpDate.hashCode),
                                docNo.hashCode),
                            createdTime.hashCode),
                        truckNo.hashCode),
                    userId.hashCode),
                otherDoc.hashCode),
            idImage.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocumentsRecord')
          ..add('sQLId', sQLId)
          ..add('documentName', documentName)
          ..add('docExpDate', docExpDate)
          ..add('docNo', docNo)
          ..add('createdTime', createdTime)
          ..add('truckNo', truckNo)
          ..add('userId', userId)
          ..add('otherDoc', otherDoc)
          ..add('idImage', idImage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DocumentsRecordBuilder
    implements Builder<DocumentsRecord, DocumentsRecordBuilder> {
  _$DocumentsRecord? _$v;

  int? _sQLId;
  int? get sQLId => _$this._sQLId;
  set sQLId(int? sQLId) => _$this._sQLId = sQLId;

  String? _documentName;
  String? get documentName => _$this._documentName;
  set documentName(String? documentName) => _$this._documentName = documentName;

  DateTime? _docExpDate;
  DateTime? get docExpDate => _$this._docExpDate;
  set docExpDate(DateTime? docExpDate) => _$this._docExpDate = docExpDate;

  String? _docNo;
  String? get docNo => _$this._docNo;
  set docNo(String? docNo) => _$this._docNo = docNo;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _truckNo;
  String? get truckNo => _$this._truckNo;
  set truckNo(String? truckNo) => _$this._truckNo = truckNo;

  DocumentReference<Object?>? _userId;
  DocumentReference<Object?>? get userId => _$this._userId;
  set userId(DocumentReference<Object?>? userId) => _$this._userId = userId;

  bool? _otherDoc;
  bool? get otherDoc => _$this._otherDoc;
  set otherDoc(bool? otherDoc) => _$this._otherDoc = otherDoc;

  String? _idImage;
  String? get idImage => _$this._idImage;
  set idImage(String? idImage) => _$this._idImage = idImage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DocumentsRecordBuilder() {
    DocumentsRecord._initializeBuilder(this);
  }

  DocumentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sQLId = $v.sQLId;
      _documentName = $v.documentName;
      _docExpDate = $v.docExpDate;
      _docNo = $v.docNo;
      _createdTime = $v.createdTime;
      _truckNo = $v.truckNo;
      _userId = $v.userId;
      _otherDoc = $v.otherDoc;
      _idImage = $v.idImage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentsRecord;
  }

  @override
  void update(void Function(DocumentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentsRecord build() => _build();

  _$DocumentsRecord _build() {
    final _$result = _$v ??
        new _$DocumentsRecord._(
            sQLId: sQLId,
            documentName: documentName,
            docExpDate: docExpDate,
            docNo: docNo,
            createdTime: createdTime,
            truckNo: truckNo,
            userId: userId,
            otherDoc: otherDoc,
            idImage: idImage,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
