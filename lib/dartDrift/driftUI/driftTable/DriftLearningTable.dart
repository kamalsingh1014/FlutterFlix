

import 'package:drift/drift.dart';

class DriftLearningTable extends Table{

  IntColumn get terminologyId => integer().named("terminologyId").autoIncrement()();
  TextColumn get terminology => text().named("terminology")();
  IntColumn get questionId => integer().named("questionId")();
  TextColumn get question => text().named("question")();
  IntColumn get answerId => integer().named("answerId")();
  TextColumn get answer => text().named("answer")();

  // DateTimeColumn get dateOfTime => dateTime().named("dob")();

}