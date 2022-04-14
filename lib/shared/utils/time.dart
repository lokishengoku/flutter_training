import 'package:intl/intl.dart';

class TimeHelper {
  static String dateTimeToString(DateTime dateTime,
      [String format = "yyyy-MM-dd HH:mm"]) {
    DateFormat dateFormat = DateFormat(format);
    return dateFormat.format(dateTime);
  }
}
