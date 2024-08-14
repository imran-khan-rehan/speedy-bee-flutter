import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Off white background
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Handle back button press
              },
            ),
            Expanded(
              child: Center(
                child: Text('Feedback'),
              ),
            ),
            IconButton(
              icon: Icon(Icons.help_outline),
              onPressed: () {
                // Handle FAQ button press
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Input: Your Name
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Your Name',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // Input: Your Email
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Your Email',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // Checkbox: Upload Log
            Row(
              children: [
                Checkbox(
                  value: false, // Set initial value accordingly
                  onChanged: (newValue) {
                    
                    // Handle checkbox state change
                  },
                ),
                Text('Upload Log'),
              ],
            ),
            SizedBox(height: 20),
            // Submit Button
            ElevatedButton(
              onPressed: () {
                // Handle submit button press
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 16)),
              ),
              child: Text('Submit', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
