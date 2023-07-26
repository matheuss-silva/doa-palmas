import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemRecord extends FirestoreRecord {
  ItemRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "categoria_item" field.
  String? _categoriaItem;
  String get categoriaItem => _categoriaItem ?? '';
  bool hasCategoriaItem() => _categoriaItem != null;

  // "estado_item" field.
  String? _estadoItem;
  String get estadoItem => _estadoItem ?? '';
  bool hasEstadoItem() => _estadoItem != null;

  // "wpp_link" field.
  String? _wppLink;
  String get wppLink => _wppLink ?? '';
  bool hasWppLink() => _wppLink != null;

  // "item_img" field.
  String? _itemImg;
  String get itemImg => _itemImg ?? '';
  bool hasItemImg() => _itemImg != null;

  // "criado_por" field.
  DocumentReference? _criadoPor;
  DocumentReference? get criadoPor => _criadoPor;
  bool hasCriadoPor() => _criadoPor != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _desc = snapshotData['desc'] as String?;
    _categoriaItem = snapshotData['categoria_item'] as String?;
    _estadoItem = snapshotData['estado_item'] as String?;
    _wppLink = snapshotData['wpp_link'] as String?;
    _itemImg = snapshotData['item_img'] as String?;
    _criadoPor = snapshotData['criado_por'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('item');

  static Stream<ItemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemRecord.fromSnapshot(s));

  static Future<ItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemRecord.fromSnapshot(s));

  static ItemRecord fromSnapshot(DocumentSnapshot snapshot) => ItemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemRecordData({
  String? nome,
  String? desc,
  String? categoriaItem,
  String? estadoItem,
  String? wppLink,
  String? itemImg,
  DocumentReference? criadoPor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'desc': desc,
      'categoria_item': categoriaItem,
      'estado_item': estadoItem,
      'wpp_link': wppLink,
      'item_img': itemImg,
      'criado_por': criadoPor,
    }.withoutNulls,
  );

  return firestoreData;
}
