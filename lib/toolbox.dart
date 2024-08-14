import 'package:flutter/material.dart';

class ToolBox extends StatefulWidget {
  const ToolBox({Key? key}) : super(key: key);

  @override
  _ToolBoxState createState() => _ToolBoxState();
}

class _ToolBoxState extends State<ToolBox> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double marginRight = screenWidth < 364 ? 100.0 : 130.0;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 252, 252),
      appBar: AppBar(
        title: const Text("ToolBox"),
        backgroundColor: const Color.fromARGB(255, 243, 228, 12),
      ),
      key: _scaffoldKey,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: SizedBox(
                    width: 100,
                    height: 130,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            '/assets/icon.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'FC Firmware Recovery',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: SizedBox(
                    width: 100,
                    height: 130,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            '/assets/icon.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'FC Firmware Recovery',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: SizedBox(
                    width: 100,
                    height: 130,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            '/assets/icon.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'FC Firmware Recovery',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
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
