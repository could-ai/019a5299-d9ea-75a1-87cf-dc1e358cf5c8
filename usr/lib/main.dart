import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrotechXion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const InfoPage(),
    );
  }
}

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrotechXion - Xzion Eyewear'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Welcome to TrotechXion!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            InfoCard(
              title: 'About TrotechXion',
              content:
                  'TrotechXion is a startup founded by a solo entrepreneur with a passion for technology and innovation. Currently, we are operating without any external funding, driven by a vision to create impactful technology. Our first product is the Xzion smart eyewear.',
            ),
            const SizedBox(height: 20),
            InfoCard(
              title: 'Xzion Eyewear Features',
              content:
                  '• Crystal Clear Display: A non-intrusive heads-up display for notifications and information.\n'
                  '• Voice Assistant: Integrated voice assistant to help you with your daily tasks.\n'
                  '• Camera: A small camera to capture moments on the go.\n'
                  '• Bluetooth Connectivity: Connects to your smartphone for seamless integration.\n'
                  '• Lightweight Design: Comfortable to wear for extended periods.',
            ),
            const SizedBox(height: 20),
            InfoCard(
              title: 'Future Plans',
              content:
                  '• Phase 1 (Current): Develop and refine the prototype of Xzion eyewear. Secure seed funding to start production.\n'
                  '• Phase 2: Launch the first version of Xzion for early adopters. Gather feedback and improve the product.\n'
                  '• Phase 3: Expand the feature set with Augmented Reality (AR) capabilities. Build a small, dedicated team.\n'
                  '• Phase 4: Partner with developers to create an app ecosystem for Xzion.',
            ),
            const SizedBox(height: 20),
            InfoCard(
              title: 'A Note from the Founder',
              content:
                  "As the sole founder of TrotechXion, I am pouring my heart and soul into this project. The journey is challenging without a team or funding, but I believe in the potential of Xzion to make a difference. Thank you for your support and for believing in this vision.",
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
