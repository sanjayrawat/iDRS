import 'package:flutter/material.dart';
import 'idrscam_history_screen.dart';
import 'idrscam_flutter.dart'; // Camera + Color Picker

void main() {
  runApp(const iDRSApp());
}

class iDRSApp extends StatelessWidget {
  const iDRSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.sports_cricket, size: 100, color: Colors.greenAccent),
            SizedBox(height: 20),
            Text("iDRS", style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Smart Decision Review System", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
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