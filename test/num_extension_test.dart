import 'package:flutter_test/flutter_test.dart';

import 'package:num_extension/src/num_extension.dart';

void main() {

  group('NumExtension', () {
    group('Nums', () {
      test('Can perform addition operation on 2 integers', () {
        expect(1.plus(3), 4);
      });

      test('Can perform addition operation on double and integer', () {
        expect(1.5.plus(3), 4.5);
      });

      test('Can perform addition operation on double and signed integer', () {
        expect(1.5.plus(-3), -1.5);
      });

      test('Can perform subtraction operation on 2 integers', () {
        expect(1.minus(3), -2);
      });

      test('Can perform subtraction operation on double and integer', () {
        expect(3.5.minus(3), 0.5);
      });

      test('Can perform subtraction operation on double and signed integer',
          () {
        expect(4.5.minus(-2), 6.5);
      });

      test('Can perform division operation on 2 integers', () {
        expect(9.div(2), 4.5);
      });

      test('Can perform division operation on double and integer', () {
        expect(4.5.div(2), 2.25);
      });

      test('Can perform division operation on double and signed integer', () {
        expect(6.8.div(-2), -3.4);
      });

      test('Can perform multiplication operation on 2 integers', () {
        expect(1.times(3), 3);
      });

      test('Can perform multiplication operation on double and integer', () {
        expect(1.5.times(3), 4.5);
      });

      test('Can perform multiplication operation on double and signed integer',
          () {
        expect(1.5.times(-3), -4.5);
      });

      test('Can perform multiple operations', () {
        expect(2.1.plus(4).times(2), 12.2);
      });

      test('Can add sum of a list to integer', () {
        expect(3.plusList([2, 3, -5, 2.2]), 5.2);
      });

      test('Can subtract sum of a list from integer', () {
        expect(3.minusList([2, 3, -5, 2.0]), 1);
      });

      test('Can perform multiple operations', () {
        expect(3.plusList([2, 3, -5, 2.2]).minusList([2, 3, 5]), -4.8);
      });
    });

    group('List<num>', () {
      test('Can calculate the sum of elements in a `List`', () {
        expect([2, 3, 5, -4].sum, 6);
      });

      test('Can determine the maximum value in a `List`', () {
        expect([2, 3, 5, -4].max, 5);
      });

      test('Can determine the minimum value in a `List`', () {
        expect([2, 3, 5, -4].min, -4);
      });

      test('Can calculate the average of elements in a `List`', () {
        expect([2, 3, 5, -4].average, 1.5);
      });

      test(
          'Can not determine the minimum value in a `List` when it contain < 2 element',
          () {
        expect(() => [2].min, throwsException);
      });

      test(
          'Can not determine the maximum value in a `List` when it contain < 2 element',
          () {
        expect(() => [2].max, throwsException);
      });

    });
  });

}
