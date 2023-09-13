import 'package:collection/collection.dart';

class Pricepoint {
  final double x;
  final double y;
  Pricepoint({required this.x, required this.y});
}

List<Pricepoint> get pricePoints {
  final data = <double>[10, 30, 23, 41, 581, 23];
  return data
      .mapIndexed(
          (index, element) => Pricepoint(x: index.toDouble(), y: element))
      .toList();
}
