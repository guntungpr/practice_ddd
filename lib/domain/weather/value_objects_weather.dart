import 'package:fpdart/fpdart.dart';
import 'package:weather/domain/core/failures/failures.dart';
import 'package:weather/domain/objects/value_objects.dart';

// disini logic/inputan
class KelvinToCelcius extends ValueObjects<double> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory KelvinToCelcius(double input) {
    final celcius = (input - 273.15).toStringAsFixed(1);
    return KelvinToCelcius._(right(celcius));
  }

  const KelvinToCelcius._(this.value);
}
