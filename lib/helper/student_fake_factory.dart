import 'package:faker_dart/faker_dart.dart';

import '../domain/entities/studant_info_entity.dart';

abstract class StudenteFakeFactory {
  static StudentInfoEntity factory() {
    // cria uma instância com localidade pt_PT
    final faker = Faker.instance;
    faker.setLocale(FakerLocaleType.pt_BR);

    var instance = StudentInfoEntity(
      name: faker.name.fullName(),
      address: faker.address.streetAddress(useFullAddress: true),
      phone: faker.phoneNumber.phoneNumber(),
      email: faker.internet.email(),
      age: faker.datatype.number(min: 18, max: 100),
    );
    return instance;
  }
}
