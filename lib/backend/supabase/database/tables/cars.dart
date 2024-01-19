import '../database.dart';

class CarsTable extends SupabaseTable<CarsRow> {
  @override
  String get tableName => 'cars';

  @override
  CarsRow createRow(Map<String, dynamic> data) => CarsRow(data);
}

class CarsRow extends SupabaseDataRow {
  CarsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CarsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get brand => getField<String>('brand');
  set brand(String? value) => setField<String>('brand', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);
}
