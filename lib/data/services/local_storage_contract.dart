import '../../domain/entities/studant_info_entity.dart';
import '../../common/errors/errors_classes.dart';
import '../../common/patterns/result.dart';

abstract class LocalStorageContract {
  Future<Result<StudentInfoEntity, Failure>> fetchStudent();
  Future<Result<void, Failure>> saveStudent(StudentInfoEntity student);
}
