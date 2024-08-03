import 'package:get/get.dart';

abstract class Routes{
  Routes._();

  static const tabs = Paths.tabs;
}

abstract class Paths {
  Paths._();
  static const tabs = '/tabs';
  static const jobs = '/jobs';
  static const bookMarks = '/book-marks';
  static const jobDetails = '/job-details';
}

