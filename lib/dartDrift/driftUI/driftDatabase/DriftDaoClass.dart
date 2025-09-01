// import 'dart:async';
// import 'dart:io';
// import 'package:path_provider/path_provider.dart';
// import 'package:drift/native.dart';
// import 'package:drift/drift.dart';
// import 'DriftDatabaseClass.dart';
// import '../driftTable/DriftLearningTable.dart';
// import 'DriftDaoClass.dart';
// part 'DriftLearningDao.g.dart';
//
//
//
//
//
//
// @DriftAccessor(tables: [DriftLearningTable])
// class DriftLearningDao extends DatabaseAccessor<DriftDatabaseClass>
//     with _$DriftLearningDaoMixin {
//   DriftLearningDao(DriftDatabaseClass db) : super(db);
//
//   // ✅ All your queries go here
//
//   Future<List<DriftLearningTableData>>? getAllTerminologies() => select(driftLearningTable).get();
//
//   Future<DriftLearningTableData> getSingleTerminology(int questionId) {
//     return (select(driftLearningTable)
//       ..where((tbl) => tbl.questionId.equals(questionId)))
//         .getSingle();
//   }
//
//   Future<int> insertTerminology(
//       DriftLearningTableCompanion driftLearningTableCompanion) =>
//       into(driftLearningTable).insert(driftLearningTableCompanion);
//
//   Future<bool> updateTerminology(
//       DriftLearningTableCompanion driftLearningTableCompanion) =>
//       update(driftLearningTable).replace(driftLearningTableCompanion);
//
//   Future<int> deleteTerminology(int terminologyId) =>
//       (delete(driftLearningTable)
//         ..where((tbl) => tbl.terminologyId.equals(terminologyId)))
//           .go();
//
//   Future<int> deleteAll() => delete(driftLearningTable).go();
//
//   // Example of a more complex query:
//   Future<List<DriftLearningTableData>> searchTerminology(String keyword) {
//     return (select(driftLearningTable)
//       ..where((tbl) => tbl.terminology.like('%$keyword%')))
//         .get();
//   }
// }
