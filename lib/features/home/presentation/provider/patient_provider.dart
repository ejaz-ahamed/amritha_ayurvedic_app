import 'package:amritha_ayurveda/features/home/domain/entity/patient_entity.dart';
import 'package:amritha_ayurveda/features/home/domain/repository/api_repository.dart';
import 'package:amritha_ayurveda/features/home/domain/usecases/get_patients_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PatientProvider extends ChangeNotifier {
  Future<List<PatientEntity>> getPatient() async {
    return await GetPatintsUsecase(repository: GetIt.I.get<ApiRepository>())();
  }
}
