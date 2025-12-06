import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(children: [Text('Font Size:')]),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: 'Medium',
              items: ['Small','Medium','Large'].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
              onChanged: (v) {},
            ),
            SizedBox(height: 20),
            Row(children: [Text('Theme:')]),
            Switch(value: false, onChanged: (v) {}),
          ],
        ),
      ),
    );
  }
}
