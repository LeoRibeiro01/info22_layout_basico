import 'package:info22_layout_basico/domain/entities/studant_info_entity.dart';

import '../../common/errors/errors_classes.dart';
import '../../common/patterns/result.dart';

abstract class StudentRepositoryContract {
  Future<Result<StudentInfoEntity, Failure>> getStudent();
  Future<Result<void, Failure>> saveStudent(StudentInfoEntity student);
}
