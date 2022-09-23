import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'image_record.g.dart';

abstract class ImageRecord implements Built<ImageRecord, ImageRecordBuilder> {
  static Serializer<ImageRecord> get serializer => _$imageRecordSerializer;

  String? get image;

  DocumentReference? get userid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImageRecordBuilder builder) =>
      builder..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('IMAGE');

  static Stream<ImageRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImageRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImageRecord._();
  factory ImageRecord([void Function(ImageRecordBuilder) updates]) =
      _$ImageRecord;

  static ImageRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImageRecordData({
  String? image,
  DocumentReference? userid,
}) {
  final firestoreData = serializers.toFirestore(
    ImageRecord.serializer,
    ImageRecord(
      (i) => i
        ..image = image
        ..userid = userid,
    ),
  );

  return firestoreData;
}
