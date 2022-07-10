import 'package:flutter/material.dart';
import 'package:flutter_studies/theme_data/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _joustCounter = 0;
  int _breakCounter = 0;
  int _patrolCounter = 0;

  @override
  Widget build(BuildContext context) {
    final totalActivities = _joustCounter + _breakCounter + _patrolCounter;
    return Scaffold(
      appBar: CustomAppBar(title: 'Theme data'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "You've done $totalActivities activities in total",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              child: const Text("Joust"),
              onPressed: () => setState(() {
                _joustCounter++;
              }),
            ),
            ElevatedButton(
              child: const Text("Take break"),
              onPressed: () => setState(() {
                _breakCounter++;
              }),
            ),
            ElevatedButton(
              child: const Text("Patrol"),
              onPressed: () => setState(() {
                _patrolCounter++;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
