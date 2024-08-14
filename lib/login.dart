import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          Container(
            color: Colors.yellow,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Handle back button press
                  },
                  child: Image.network('/assets/arrow.png',width: 25,height:25 ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // Google Login Button
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Updated from primary to backgroundColor
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
                onPressed: () {
                  // Handle Google login
                },
                icon: Image.network('/assets/facebook.png',width: 25,height:25 ),
                label: Text('Facebook', style: TextStyle(fontSize: 18,color: Colors.white)),
              ),
            ),
          ),
          SizedBox(height: 20),
          // Google Login Button
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Updated from primary to backgroundColor
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
                onPressed: () {
                  // Handle Google login
                },
                icon: Image.network('/assets/chat.png',width: 25,height:25 ),
                label: Text('we Chat', style: TextStyle(fontSize: 18,color: Colors.white)),
              ),
            ),
          ),
          SizedBox(height: 20),
          // Google Login Button
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Updated from primary to backgroundColor
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
                onPressed: () {
                  // Handle Google login
                },
                icon: Image.network('/assets/facebook.png',width: 25,height:25 ),
                label: Text('Google', style: TextStyle(fontSize: 18,color: Colors.white)),
              ),
            ),
          ),
          SizedBox(height: 20),
          // OR Line
          Row(
            children: [
              Expanded(child: Divider(thickness: 1)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('OR', style: TextStyle(fontSize: 16)),
              ),
              Expanded(child: Divider(thickness: 1)),
            ],
          ),
          SizedBox(height: 20),
          // Email Input Field
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                prefixIcon: Padding(
                  padding: EdgeInsets.all(12),
                  child: Image.network('/assets/person.png',width: 25,height:25 ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          // Login Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Updated from primary to backgroundColor
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Handle Login
                },
                child: Text('LOGIN', style: TextStyle(fontSize: 18)),
              ),
            ),
          ),
          SizedBox(height: 20),
          // Footer
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('NO account?', style: TextStyle(fontSize: 16)),
                TextButton(
                  onPressed: () {
                    // Handle Forgot Password
                  },
                  child: Text(
                    'FORGOT password',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
