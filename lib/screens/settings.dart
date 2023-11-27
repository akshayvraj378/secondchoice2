import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool SwitchOn = false;
  bool SwitchOnn = false;
  String dropdownvalue = 'English';

  // List of items in our dropdown menu
  var items = [
    'English',
    'Malayalam',
    'Spanish',
    'Hindi',
    'Tamil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(bottom: 30, top: 60, left: 14),
            child: Row(
              children: [
                Text('settings',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 36)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.person_2_outlined, size: 26),
                Text(
                  'Accounts',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Divider(),
          ),
          ListTile(
            onTap: () {},
            leading:
                Text('Edit profile', style: TextStyle(color: Colors.black54)),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            onTap: () {},
            leading: Text('Change password',
                style: TextStyle(color: Colors.black54)),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            onTap: () {},
            leading: Text('Facebook', style: TextStyle(color: Colors.black54)),
            trailing: Icon(Icons.navigate_next),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.notifications, size: 26),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Divider(),
          ),
          ListTile(
            onTap: () {},
            leading:
                Text('Notifications', style: TextStyle(color: Colors.black54)),
            trailing: Switch(
              activeColor: Colors.blue,
              value: SwitchOn,
              onChanged: (value) {
                setState(() {
                  SwitchOn = !SwitchOn;
                });
              },
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text('App notifications',
                style: TextStyle(color: Colors.black54)),
            trailing: Switch(
              activeColor: Colors.blue,
              value: SwitchOnn,
              onChanged: (value) {
                setState(() {
                  SwitchOnn = !SwitchOnn;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.sticky_note_2, size: 26),
                Text(
                  'More',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Divider(),
          ),
          ListTile(
            leading: Text('Language', style: TextStyle(color: Colors.black54)),
            trailing: DropdownButton(
              borderRadius: BorderRadius.circular(27),
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text('Contry', style: TextStyle(color: Colors.black54)),
            trailing: Icon(Icons.navigate_next),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 190, right: 190, top: 20),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.black12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.logout), Text('Logout')],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
