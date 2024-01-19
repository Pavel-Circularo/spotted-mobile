import '../database.dart';

class CarMakersTable extends SupabaseTable<CarMakersRow> {
  @override
  String get tableName => 'car-makers';

  @override
  CarMakersRow createRow(Map<String, dynamic> data) => CarMakersRow(data);
}

class CarMakersRow extends SupabaseDataRow {
  CarMakersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CarMakersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get maker => getField<String>('maker');
  set maker(String? value) => setField<String>('maker', value);
}
