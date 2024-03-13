import 'package:amritha_ayurveda/features/home/domain/entity/branch_entity.dart';
import 'package:amritha_ayurveda/features/home/domain/repository/api_repository.dart';

final class GetBranchesUsecase {
  final ApiRepository repository;
  GetBranchesUsecase({required this.repository});

  Future<List<BranchEntity>> call() async {
    try {
      return await repository.getBranchs();
    } catch (e) {
      throw Exception('Error');
    }
  }
}
