import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'documents_record.g.dart';

abstract class DocumentsRecord
    implements Built<DocumentsRecord, DocumentsRecordBuilder> {
  static Serializer<DocumentsRecord> get serializer =>
      _$documentsRecordSerializer;

  @BuiltValueField(wireName: 'SQL_id')
  int? get sQLId;

  @BuiltValueField(wireName: 'Document_Name')
  String? get documentName;

  @BuiltValueField(wireName: 'Doc_exp_date')
  DateTime? get docExpDate;

  @BuiltValueField(wireName: 'Doc_No')
  String? get docNo;

  @BuiltValueField(wireName: 'Created_Time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'truck_no')
  String? get truckNo;

  @BuiltValueField(wireName: 'User_id')
  DocumentReference? get userId;

  @BuiltValueField(wireName: 'Other_Doc')
  bool? get otherDoc;

  @BuiltValueField(wireName: 'id_image')
  String? get idImage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DocumentsRecordBuilder builder) => builder
    ..sQLId = 0
    ..documentName = ''
    ..docNo = ''
    ..truckNo = ''
    ..otherDoc = false
    ..idImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Documents');

  static Stream<DocumentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DocumentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DocumentsRecord._();
  factory DocumentsRecord([void Function(DocumentsRecordBuilder) updates]) =
      _$DocumentsRecord;

  static DocumentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDocumentsRecordData({
  int? sQLId,
  String? documentName,
  DateTime? docExpDate,
  String? docNo,
  DateTime? createdTime,
  String? truckNo,
  DocumentReference? userId,
  bool? otherDoc,
  String? idImage,
}) {
  final firestoreData = serializers.toFirestore(
    DocumentsRecord.serializer,
    DocumentsRecord(
      (d) => d
        ..sQLId = sQLId
        ..documentName = documentName
        ..docExpDate = docExpDate
        ..docNo = docNo
        ..createdTime = createdTime
        ..truckNo = truckNo
        ..userId = userId
        ..otherDoc = otherDoc
        ..idImage = idImage,
    ),
  );

  return firestoreData;
}
