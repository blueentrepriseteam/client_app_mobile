// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class FormatDate {
  static String dmyFormat(
    DateTime date, {
    String pattern = ' ',
    String? customer,
    String? locale,
  }) {
    DateFormat dateFormat = DateFormat(
      customer ?? 'dd${pattern}MMM${pattern}y',
      locale,
    );
    return dateFormat.format(date);
  }

  static String dmFormat(
    DateTime date, {
    String pattern = ' ',
    String? locale,
  }) {
    DateFormat dateFormat = DateFormat('dd${pattern}MMM$pattern', locale);
    return dateFormat.format(date);
  }

  static String dmyFormatToServer(DateTime date, {String pattern = '-'}) {
    DateFormat dateFormat = DateFormat('y${pattern}MM${pattern}dd');
    return dateFormat.format(date);
  }

  static String hmFormat(
    DateTime date, {
    String pattern = ':',
    String? locale,
  }) {
    DateFormat dateFormat = DateFormat('HH${pattern}mm', locale);
    return dateFormat.format(date);
  }

  static DateTime stringtoDate(String date) {
    return DateTime.parse(date);
  }

  static String dmyHmFormat(
    DateTime date, {
    String pattern = ' ',
    String? customer,
    String? locale,
  }) {
    return '${dmyFormat(date, pattern: pattern, customer: customer, locale: locale)} à ${hmFormat(date)}';
  }

  static String correctionHeure(String element) {
    return element.split(':').map((e) => e.padLeft(2, '0')).join(':');
  }

  static String timeAgo({required DateTime date, bool numericDates = false}) {
    final dateTime = date;
    final difference = DateTime.now().difference(dateTime);
    if ((difference.inDays / 7).floor() >= 1) {
      return 'il y a ${(difference.inDays / 7).floor()} semaine(s)';
    } else if (difference.inDays >= 2) {
      return 'il y a ${difference.inDays} jours';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? 'il y a 1 jour' : 'Hier';
    } else if (difference.inHours >= 2) {
      return 'il y a ${difference.inHours} heurs';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? 'Il y a 1 heure' : 'Il y a une heure';
    } else if (difference.inMinutes >= 2) {
      return 'il y a ${difference.inMinutes} minutes';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? 'il y a 1 minute' : "Il y a une minute";
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds';
    } else {
      return 'Maintenant';
    }
  }
}
