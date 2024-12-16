import 'package:flutter/material.dart';

class UpdaterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updater Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('1st AQL Audit Pass'),
            trailing: DropdownButton<String>(
              items: [
                DropdownMenuItem(value: 'Completed', child: Text('Completed')),
                DropdownMenuItem(
                    value: 'Not Completed', child: Text('Not Completed')),
                DropdownMenuItem(value: 'Ongoing', child: Text('Ongoing')),
              ],
              onChanged: (value) {
                // Handle status update
              },
            ),
          ),
          Divider(),
          ListTile(
            title: Text('1st 10 pcs Review'),
            trailing: DropdownButton<String>(
              items: [
                DropdownMenuItem(value: 'Completed', child: Text('Completed')),
                DropdownMenuItem(
                    value: 'Not Completed', child: Text('Not Completed')),
                DropdownMenuItem(value: 'Ongoing', child: Text('Ongoing')),
              ],
              onChanged: (value) {
                // Handle status update
              },
            ),
          ),
        ],
      ),
    );
  }
}
