import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'factura_record.g.dart';

abstract class FacturaRecord
    implements Built<FacturaRecord, FacturaRecordBuilder> {
  static Serializer<FacturaRecord> get serializer => _$facturaRecordSerializer;

  DateTime? get fecha;

  String? get receptor;

  DocumentReference? get emisor;

  double? get total;

  BuiltList<DocumentReference>? get detalle;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FacturaRecordBuilder builder) => builder
    ..receptor = ''
    ..total = 0.0
    ..detalle = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('factura');

  static Stream<FacturaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FacturaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FacturaRecord._();
  factory FacturaRecord([void Function(FacturaRecordBuilder) updates]) =
      _$FacturaRecord;

  static FacturaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFacturaRecordData({
  DateTime? fecha,
  String? receptor,
  DocumentReference? emisor,
  double? total,
}) {
  final firestoreData = serializers.toFirestore(
    FacturaRecord.serializer,
    FacturaRecord(
      (f) => f
        ..fecha = fecha
        ..receptor = receptor
        ..emisor = emisor
        ..total = total
        ..detalle = null,
    ),
  );

  return firestoreData;
}
