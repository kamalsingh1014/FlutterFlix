


import 'dart:async';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import '../driftTable/DriftLearningTable.dart';
// import 'DriftDaoClass.dart';
part 'DriftDatabaseClass.g.dart';


LazyDatabase getDriftDbInstance(){
  return LazyDatabase(()async{

   final dbFolder =  await getApplicationDocumentsDirectory();
  final file = File(path.join(dbFolder.path,"learn_technology.sqlite"));
  return NativeDatabase(file);
  });

}

//flutter pub run build_runner build
//For generating missing file
@DriftDatabase(tables: [DriftLearningTable]
  // , daos: [DriftLearningDao], // 👈 register DAO
)
class DriftDatabaseClass extends _$DriftDatabaseClass{

  DriftDatabaseClass():super(getDriftDbInstance());

  @override
  int get schemaVersion => 1;

  Future<List<DriftLearningTableData>> getInBuiltTerminology() async{
    return await select(driftLearningTable).get();
  }


  Future<DriftLearningTableData> getSingleInBuiltTerminology(int questionId) async{
    return await (select(driftLearningTable)..where((tbl)=> tbl.questionId.equals(questionId))).getSingle();
  }

  Future<bool> updateDriftLearningTable(DriftLearningTableCompanion driftLearningTableCompanion)async{
    return await update(driftLearningTable).replace(driftLearningTableCompanion);
  }

  Future<int> insertDriftLearningTable(DriftLearningTableCompanion driftLearningTableCompanion) async{
    return into(driftLearningTable).insert(driftLearningTableCompanion);
  }

  Future<int> deleteDriftLearningTable(int terminologyId) async{
    return (delete(driftLearningTable)..where((tbl) => tbl.terminologyId.equals(terminologyId))).go();
  }
  Future<int> deleteAllDriftLearningTable() async{
    return (delete(driftLearningTable)).go();
  }


}