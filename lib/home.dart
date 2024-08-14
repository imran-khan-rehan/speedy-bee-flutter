import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double marginRight = screenWidth < 364 ? 100.0 : 130.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Speedybee"),
        backgroundColor: Color.fromARGB(255, 250, 251, 252),
      ),
      key: _scaffoldKey,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.network(
                        '/assets/icon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Configure Your Quad has never been easier',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Connect your flight controller to the SpeedyBee, You could configure ports, change motor directions, tune PID values and so on at anytime, anywhere',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 10,
                    color: Color.fromARGB(255, 95, 94, 94),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 228, 12),
                    borderRadius: BorderRadius.circular(14),
                    border: Border(),
                  ),
                  child: GestureDetector(
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Add BottomNavigationBar
          Positioned(
            bottom: 10,
            left: 8,
            right: 8,
            child: Container(
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 32, 32, 32), // Background color
                borderRadius: BorderRadius.circular(16), // Border radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BottomNavigationBar(
                  currentIndex: _currentIndex,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });

                    // Handle navigation based on index
                    // For example, you can use a Navigator or switch statements
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.business),
                      label: 'Services',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.star),
                      label: 'Activity',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Profile',
                    ),
                  ],
                  backgroundColor: Colors
                      .transparent, // Make background transparent to see the container color
                  selectedItemColor: const Color.fromARGB(255, 243, 228, 12),
                  unselectedItemColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
