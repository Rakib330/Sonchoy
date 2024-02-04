import 'package:hive_flutter/hive_flutter.dart';
import 'package:sonchoy/data/date_time.dart';

final _myBox = Hive.box("Habit_Database");

class HabitDatabase {
  List todayHabitList = [];

  void createDefaultData() {
    todayHabitList = [
      ["Morning Walk", false],
      ["Coding for More", true],
    ];

    _myBox.put("START_DATE", todaysDateFormateted());
  }

  void loadData() {
    if (_myBox.get(todaysDateFormateted()) == null) {
      todayHabitList = _myBox.get("CURRENT_HABIT_LIST");

      for (int i = 0; i < todayHabitList.length; i++) {
        todayHabitList[i][1] = false;
      }
    } else {
      todayHabitList = _myBox.get(todaysDateFormateted());
    }
  }

  void updateDatabase() {
    _myBox.put(todaysDateFormateted(), todayHabitList);
    _myBox.put("CURRENT_HABIT_LIST", todayHabitList);
  }
}
