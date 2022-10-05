import 'package:flutter_test/flutter_test.dart';
import 'package:ft67_edh_unit_testing/person.dart';

void main() {
  group("Mengecek class Person", () {
    Person p;
    p = Person();
    test("Inisialisasi Objek Person", () {
      print("test 1");
      expect(p.name, equals("no name"));
      expect(p.age, equals(0));
    });

    test("Age harus positif", () {
      print("test 2");
      p.age = -5;
      expect(p.age, isPositive);
    });

    test("Angka keberuntungan harus 3 buah bilangan positif", () {
      expect(p.luckyNumbers,
          allOf(hasLength(equals(3)), isNot(anyElement(isNegative))));
    });
  });

  setUp(() {
    print("set up");
  });

  tearDown(() {
    print("tear down");
  });
}
