import 'package:amritha_ayurveda/features/home/domain/entity/branch_entity.dart';
import 'package:amritha_ayurveda/features/home/domain/entity/patient_entity.dart';
import 'package:amritha_ayurveda/features/home/domain/entity/treatment_entity.dart';

abstract class ApiRepository {
  Future<List<PatientEntity>> getDatas();
  Future<List<BranchEntity>> getBranchs();
  Future<List<TreatmentEntity>> getTreatment();
}
