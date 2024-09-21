import 'package:intl/intl.dart';  // For date formatting and parsing

void main() {
  // 1. Get the current date and time
  DateTime now = DateTime.now();
  print('Current date and time: $now');

  // 2. Format the date (using the intl package for custom formatting)
  DateFormat dateFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
  String formattedDate = dateFormat.format(now);
  print('Formatted date: $formattedDate');

  // 3. Parse a date string
  String dateString = '2024-09-15 10:30:00';
  DateTime parsedDate = DateFormat('yyyy-MM-dd HH:mm:ss').parse(dateString);
  print('Parsed date: $parsedDate');

  // 4. Add and subtract days from a date
  DateTime futureDate = now.add(Duration(days: 10));
  DateTime pastDate = now.subtract(Duration(days: 7));
  print('Date 10 days from now: $futureDate');
  print('Date 7 days ago: $pastDate');

  // 5. Calculate the difference between two dates
  DateTime startDate = DateTime(2024, 9, 1);
  DateTime endDate = DateTime(2024, 9, 15);
  Duration difference = endDate.difference(startDate);
  print('Difference between $startDate and $endDate: ${difference.inDays} days');
}
