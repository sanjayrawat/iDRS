
// iDRS - Home Screen with Start New Review Integration and Ready for Testing
import 'package:flutter/material.dart';
import 'idrscam_history_screen.dart';
import 'idrscam_flutter.dart'; // Camera + Color Picker (Start Review)

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("iDRS - Decision Review System"),
        backgroundColor: Colors.green.shade800,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CameraScreen()),
                ),
                icon: const Icon(Icons.videocam),
                label: const Text("Start New Review"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ReplayHistoryScreen()),
                ),
                icon: const Icon(Icons.history),
                label: const Text("Replay History"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
