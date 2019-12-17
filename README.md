# num_extension

A set of mathematical calculations on `num` and `List<num>` objects - using Dart Extension Methods.

(https://pub.dev/packages/num_extension)


## Installation
```yaml
dependencies:
  num_extension: ^1.0.0
```


### Import

```dart
import 'package:num_extension/num_extension.dart';
```


## Usage

You can play out all essential number juggling tasks on `num`
 
```dart
  var result = 1.plus(3);
  var result = 3.minus(4);
  var result = 2.1.plus(4).times(2);
  var result = 1.plus(3.1).div(7).times(2);
```

You can as well add/subtract the sum of elements in `List<num>` to/from the `num`

```dart
  var result = 3.plusList([2, 1, -4, 8]);
  var result = 27.minusList([9, -2, 9, 4]);
  var result = 4.div(2).times(3).minus(4.5).plus(3).plusList([2, 8, 4, 5]);
```


You can also do the same on `List<num>`

```dart
  var result = [2, 3, 1, -12.1].sum;
  var result = [2, 3, 1, -12].min;
  var result = [2, 3, 1, -12].max;
  var result = [2, 3, 1, -12].average;
  var result = [2, 3, 1, -12].sum.plusList([2,4]).minus(4).div(2);
```

## License

MIT License


## Issues/Requests

Pull requests are welcome. More so, on the off chance that you experience any issues don't hesitate to open an issue. In the event that you feel the library is feeling the loss of a component if you don't mind raising a ticket on Github and I'll investigate it.