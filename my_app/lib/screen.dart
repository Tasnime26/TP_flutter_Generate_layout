import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<double> outlines = [];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; // Get screen width
    double screenHeight = MediaQuery.of(context).size.height; // Get screen height
        

    return Scaffold(
      appBar: AppBar(
        title: Text(' Screen 2'),
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // Stretch to take the full width
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            // Takes all available space
            child: Stack(
              alignment: Alignment.center,
              children: outlines.map((size) {
                return Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 243, 33, 33), width: 2.0),
                  ),
                );
              }).toList(),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (outlines.isEmpty) {
                  outlines.add(screenWidth - 20);
                } else {
                  outlines.add(outlines.last - 30);
                }
              });
            },
            child: Text('Generate Layout'),
          ),
        ],
      ),
    );
  }
}
