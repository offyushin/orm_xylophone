import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
                                                                                                                                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const XylophoneApp(),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft
    ]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('실로폰'),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: gunban('도', Colors.redAccent),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: gunban('레', Colors.orangeAccent),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              child: gunban('미', Colors.orange),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: gunban('파', Colors.deepOrangeAccent),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 48.0),
              child: gunban('솔', Colors.cyan),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 56.0),
              child: gunban('라', Colors.blueAccent),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 64.0),
              child: gunban('시', Colors.purpleAccent),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 72.0),
              child: gunban('도', Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
  Widget gunban(String text, Color color) {
    return Container(
      width: 50,
      height: double.infinity,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

