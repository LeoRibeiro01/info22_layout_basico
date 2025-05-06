import 'dart:ui';

import '';
import '';
import '';
import '';
import '';

class FakeDbService implements LocalStorageContract {
  StudentFakeApiDataBase fakeDB = StudentFakeApiDataBase();
}

@override
Future<Result<StudentInfoEntity, Failure>> fetchStudent() async{
  try{
    var result = await fakeDB.getData();
    StudentInfoEntity student =StudentInfoEntity.fromJson(result);
    return Sucess(student);
  } on DatasourceResultEmpty catch (e) {
    return Error(DatasourceResultEmpty(e.toString());)
  } on APIFailure catch (e) {
    return Error(APIFailure(e.toString()));
  } on Exception catch (e) {
    return Error(DefaultError('Erro ao buscar estudante: ${e.toString()}')) 
  }
}


@override
Future<Result<void, Failure>> saveStudent(StudentInfoEntity student) async {
  try{
    await Future.delayed(const Duration(seconds: 5));
    fakeDB.updateData(student.toJson());

    return const Sucess(null);
  } on APIFailureOnSave catch (e){
    return Error(APIFailureOnSave(e.toString()));
  } on Exception catch (e){
    return Error(DefaultError('Erro desconhecido ao salvar o estudante: $(e.to..)'))
  }
  }


}