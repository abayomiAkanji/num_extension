import 'package:num_extension/src/num_extension.dart';

void main() {

  // `num` Extensions
  print(1.plus(3));
  print(3.minus(4));
  print(3.plusList([2, 1, -4, 8]));
  print(27.minusList([9, -2, 9, 4]));
  print(2.1.plus(4).times(2));
  print(1.plus(3.1).div(7).times(2));
  print(4.div(2).times(3).minus(4.5).plus(3).plusList([2,8,4,5]));
  print(3.plusList([2, 3, -5, 2.2]));
  print(3.minusList([2, 3, -5, 2.2]));


  // `List<num>` Extensions
  print([2,3,1,-12.1].sum);
  print([2,3,1,-12].min);
  print([2,3,1,-12].max);
  print([2,3,1,-12].average);
  print([2,3,1,-12].sum.plusList([2,4]).minus(4).div(2));

}