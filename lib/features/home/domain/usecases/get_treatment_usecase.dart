import 'package:amritha_ayurveda/features/home/domain/entity/treatment_entity.dart';
import 'package:amritha_ayurveda/features/home/domain/repository/api_repository.dart';

final class GetTreatmentUsecase {
  final ApiRepository repository;
  GetTreatmentUsecase({required this.repository});

  Future<List<TreatmentEntity>> call() async {
    try {
      return await repository.getTreatment();
    } catch (e) {
      throw Exception('Error');
    }
  }
}
