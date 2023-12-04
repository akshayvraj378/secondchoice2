import 'package:flutter/material.dart';

class MyTabbedCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SizedBox(width: double.infinity,height: 300, child: MyTabbedCard()),
      ),
    );
  }
}

class MyTabbedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 25, left: 25, top: 25, bottom: 25),
      elevation: 4.0,
      child: DefaultTabController(
        length: 3, // Number of tabs
        child: SizedBox(
          child: Column(
            children: [
              TabBar(
                labelColor: Colors.black,
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
                    SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text('Central locking'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text('Driver air Bag'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text('Anti Lock Barking System'),
                                  ), Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text('Power door lock'),
                                  ), Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text('Adjustable seats'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text('Driver air Bag'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text('Crash sensor'),
                                  ), Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text('Air Conditioner'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
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
      ),
    );
  }
}
