import 'package:collection/collection.dart';

class WeightPoint {
  final double x;
  final double y;
  WeightPoint({required this.x, required this.y});
}

List<WeightPoint> get weightPoints {
  final data = <double>[78.3, 79.9, 73.5, 73.5];
  return data
      .mapIndexed((index, value) => WeightPoint(x: index.toDouble(), y: value))
      .toList();
}
