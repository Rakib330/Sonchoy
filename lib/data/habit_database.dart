import 'package:hive_flutter/hive_flutter.dart';

final _myBox = Hive.box("Habit_Database");

class HabitDatabase {
  List todayHabitList = [];

  void createDefaultData() {
    todayHabitList = [
      ["Morning Walk", false],
      ["Coding for More", true],
    ];
  }

  void loadData() {}
  void updateDatabase() {}
}
