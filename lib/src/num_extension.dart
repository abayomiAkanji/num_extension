library num_extension;


extension NumExtension on num {

  /// Returns this `num` plus [other].
  num plus(num other) => this + other;

  /// Returns this `num` plus sum of [others].
  ///
  /// ```Dart
  /// 3 + [2, 3, -5, 2.5] = 5.5
  /// ```
  num plusList(List<num> others) => this + others.sum;


  /// Returns this `num` minus [other]
  num minus(num other) => this - other;

  /// Returns this `num` minus sum of [others]
  ///
  /// ```Dart
  /// 3 - [2, 3, -5, 2.5] = 0.5
  /// ```
  num minusList(List<num> others) => this - others.sum;


  /// Returns this `num` divided by [other]
  num div(num other) => this / other;

  /// Returns this `num` multiple by [other]
  num times(num other) => this * other;

  num asFixed(int fractionDigits) => num.parse(toStringAsFixed(fractionDigits));

}


extension ListNumExtension on List<num> {

  /// Returns the sum of this list's elements
  num get sum => _getSum(this);

  /// Returns the highest number among the elements in this list
  num get max => _getMax(this);

  /// Returns the lowest number among the elements in this list
  num get min => _getMin(this);

  /// Returns the mean value of the sum of this list
  num get average => sum / length;


  /// Returns the lowest number among the elements in [values]
  num _getMin(List<num> values) {
    final minExpectedLength = 2;
    if (values.length < minExpectedLength) {
      throw Exception('Collection must have a minumum of 2 elements');
    }

    // Sets the first element as [min]
    var min = values[0];

    // Iterates through this list to compare the [value] in [values]
    for (var value in values) {
      if (value < min) min = value;
    }

    return min;
  }

  /// Returns the highest number among the elements in [values]
  num _getMax(List<num> values) {
    final minExpectedLength = 2;
    if (values.length < minExpectedLength) {
      throw Exception('Collection must have a minumum of 2 elements');
    }

    // Sets the first element as [max]
    var max = values[0];

    // Iterates through this list to compare the [value] in [values]
    for (var value in values) {
      if (value > max) max = value;
    }

    return max;
  }

  /// Returns the sum of the elements in [values]
  num _getSum(List<num> values) {
    var sum = 0.0;

    for (var value in values) {
      sum += value;
    }

    return sum;
  }

}

