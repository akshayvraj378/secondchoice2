//
// class _HomePagesState extends State<HomePages> {
//   // ... (existing code remains the same)
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey, // Added key to the Scaffold
//       backgroundColor: Colors.black12,
//       appBar: CustomAppBar(
//         scaffoldKey: _scaffoldKey,
//         preferredSize: const Size.fromHeight(70),
//       ),
//       drawer: Drawer( // Added Drawer widget
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Drawer Header',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               title: Text('Option 1'),
//               onTap: () {
//                 // Handle option 1 tap
//               },
//             ),
//             ListTile(
//               title: Text('Option 2'),
//               onTap: () {
//                 // Handle option 2 tap
//               },
//             ),
//             // Add more ListTile widgets for additional options
//           ],
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: carName.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const Details(),
//                 ),
//               );
//             },
//             child: Card(
//               // ... (existing card widget code remains the same)
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         // ... (existing bottom navigation bar code remains the same)
//       ),
//     );
//   }
// }
