import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/action-buttons.widget.dart';
import 'package:perfect_eggs/widgets/eggs.widget.dart';
import 'package:perfect_eggs/widgets/progress.widget.dart';
import 'package:perfect_eggs/widgets/type-buttons.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: ListView(
          children: const [
            SizedBox(
              height: 50,
            ),
            Text(
              "Perfect Eggs",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Eggs(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TypeButtons(),
            ),
            Progress(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: ActionButtons(),
            ),
          ],
        ),
      ),
    );
  }
}
