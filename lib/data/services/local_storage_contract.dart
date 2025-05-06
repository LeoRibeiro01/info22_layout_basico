import 'package:info22_layout_basico/domain/entities/studant_info_entity.dart';

import '../../common/errors/errors_classes.dart';
import '../../common/patterns/result.dart';


abstract class LocalSotrageContract {
  Future<Result<StudentInfoEntity, Failure>> fetchStudent();
  Future<Result<void, Failure>> saveStudent(StudentInfoEntity student);
}
