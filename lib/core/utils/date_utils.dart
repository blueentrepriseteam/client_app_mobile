import 'dart:core';

class DateUtil {
  static DateDiff dateDiff(DateTime date1, DateTime date2) {
    Map<String, int> diff = {}; // Initialisation du retour
    Duration difference = date1.difference(date2);

    diff['day'] = difference.inDays;
    diff['hour'] = difference.inHours.remainder(24);
    diff['min'] = difference.inMinutes.remainder(60);
    diff['sec'] = difference.inSeconds.remainder(60);

    return DateDiff(
      day: diff['day'] ?? 0,
      hour: diff['hour'] ?? 0,
      min: diff['min'] ?? 0,
      sec: diff['sec'] ?? 0,
    );
  }

  static DateTime lastDayofThmonth(DateTime date) {
    final day = DateTime(date.year, date.month + 1, 0).day;
    return DateTime(date.year, date.month, day);
  }

  static DateTime firstDayofThmonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }
}

class DateDiff {
  final int day;
  final int hour;
  final int min;
  final int sec;
  DateDiff({
    required this.day,
    required this.hour,
    required this.min,
    required this.sec,
  });
}
