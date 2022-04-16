import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const String formatLongDayMonthTime = "EEEE, dd MMMM yyyy HH:mm:ss";
const String formatLongDayAndMonth = "EEEE, dd MMMM yyyy";
const String formatDDMMMYYYY = "dd MMM yyyy";
const String formatEEEDDMMMYYYY = "EEE, dd MMM yyyy";
const String formatMMMMddyyyhhmma = "MMMM dd yyyy  •  hh:mm a";
const String formatDefault = "yyyy-MM-dd HH:mm:ss";

String formatTime(TimeOfDay timeOfDay) {
  var h = timeOfDay.hour;
  var m = timeOfDay.minute;
  var hour = h < 10 ? "0$h" : h.toString();
  var minutes = m < 10 ? "0$m" : m.toString();
  return "$hour:$minutes";
}

String? formatToString(DateTime? date, String format) {
  try {
    return DateFormat(format).format(date!);
  } catch (e) {
    return null;
  }
}

DateTime parseToDate(String dateString, String format) =>
    DateFormat(format).parse(dateString);