import 'package:daily_wins/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: Container(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {},
            backgroundColor: kAppGreen,
            foregroundColor: Colors.white,
            child: const Icon(
              Icons.add,
              size: 35,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 4,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: kAppGreen,
              child: const SafeArea(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    'What do you want to do today?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: MediaQuery.of(context).size.height / 4,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: Text('card'),
                  );
                },
                itemCount: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
