import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late int imageNo;
  Random random = Random();

  void _randomGenerator() {
    imageNo = random.nextInt(6) + 1;
  }

  void _textButtonController() {
    setState(() {
      _randomGenerator();
    });
  }

  @override
  void initState() {
    _randomGenerator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Color.fromARGB(255, 255, 64, 83)])),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice-$imageNo.png',
                width: 200,
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: _textButtonController,
                child: const Text(
                  'Roll Dice',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
