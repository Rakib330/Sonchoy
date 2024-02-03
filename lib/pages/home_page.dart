import 'package:flutter/material.dart';
import 'package:sonchoy/components/habit_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todayHabitList = [
    ["Morning Walk", false],
    ["Coding forMore", true],
  ];

  void checkBoxTapped(bool? value, int index) {
    setState(() {
      todayHabitList[index][1] = value!;
    });
  }

  void createNewHabit() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: MyFloatingActionButton(),
        body: ListView.builder(
            itemCount: todayHabitList.length,
            itemBuilder: (context, index) {
              return HabitTile(
                  habitName: todayHabitList[index][0],
                  habitCompleted: todayHabitList[index][1],
                  onChanged: (value) => checkBoxTapped(value, index));
            }));
  }
}
