import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabbedCardPage(),
    );
  }
}

class MyTabbedCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SizedBox(height: 300,width: 300,child: MyTabbedCard()),
      ),
    );
  }
}

class MyTabbedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(margin: EdgeInsets.only(right: 45,left: 45,top: 45,bottom: 70),
      elevation: 4.0,
      child: DefaultTabController(
        length: 3, // Number of tabs
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Overview'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Content for Tab 1
                  Center(
                    child: Text('Content for Tab 1'),
                  ),
                  // Content for Tab 2
                  Center(
                    child: Text('Content for Tab 2'),
                  ),
                  // Content for Tab 3
                  Center(
                    child: Text('Content for Tab 3'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
