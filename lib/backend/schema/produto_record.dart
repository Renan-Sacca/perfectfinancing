import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'produto_record.g.dart';

abstract class ProdutoRecord
    implements Built<ProdutoRecord, ProdutoRecordBuilder> {
  static Serializer<ProdutoRecord> get serializer => _$produtoRecordSerializer;

  @nullable
  String get nome;

  @nullable
  double get valor;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdutoRecordBuilder builder) => builder
    ..nome = ''
    ..valor = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produto');

  static Stream<ProdutoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdutoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdutoRecord._();
  factory ProdutoRecord([void Function(ProdutoRecordBuilder) updates]) =
      _$ProdutoRecord;

  static ProdutoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdutoRecordData({
  String nome,
  double valor,
}) =>
    serializers.toFirestore(
        ProdutoRecord.serializer,
        ProdutoRecord((p) => p
          ..nome = nome
          ..valor = valor));
