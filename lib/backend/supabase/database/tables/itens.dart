import '../database.dart';

class ItensTable extends SupabaseTable<ItensRow> {
  @override
  String get tableName => 'Itens';

  @override
  ItensRow createRow(Map<String, dynamic> data) => ItensRow(data);
}

class ItensRow extends SupabaseDataRow {
  ItensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItensTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get categoriaItem => getField<String>('categoria_item');
  set categoriaItem(String? value) => setField<String>('categoria_item', value);

  String? get estadoItem => getField<String>('estado_item');
  set estadoItem(String? value) => setField<String>('estado_item', value);

  String? get wppLink => getField<String>('wpp_link');
  set wppLink(String? value) => setField<String>('wpp_link', value);
}
