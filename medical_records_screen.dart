import 'package:flutter/material.dart';

class MedicalRecordsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Records'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your Medical Records',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Placeholder for medical records list
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Replace with actual record count
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text('Record #${index + 1}'),
                      subtitle: Text('Details about the record...'),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        // Logic to view specific record details
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}