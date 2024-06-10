import 'package:intl/intl.dart';

String humanReadableNumber(double number) {
  // Using INTL 
  final formatter = NumberFormat.compact();
  return formatter.format(number);
}