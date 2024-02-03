import 'package:hive_flutter/hive_flutter.dart';

final _myBox = Hive.box("Habit_Database");

class HabitDatabase {
  List todaysHabitList = [];

  void createDefaultData() {}
  void loadData() {}
  void updateDatabase() {}
}
