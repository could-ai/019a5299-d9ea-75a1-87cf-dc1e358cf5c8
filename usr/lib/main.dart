import 'package:flutter/material.dart';

void main() {
  runApp(const TrotechXionApp());
}

class TrotechXionApp extends StatelessWidget {
  const TrotechXionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrotechXion - Xzion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/features': (context) => const FeaturesScreen(),
        '/future': (context) => const FutureScreen(),
        '/contact': (context) => const ContactScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrotechXion'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Xzion Eyewear',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pushReplacementNamed(context, '/home'),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About TrotechXion'),
              onTap: () => Navigator.pushReplacementNamed(context, '/about'),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Xzion Features'),
              onTap: () => Navigator.pushReplacementNamed(context, '/features'),
            ),
            ListTile(
              leading: const Icon(Icons.timeline),
              title: const Text('Future Plans'),
              onTap: () => Navigator.pushReplacementNamed(context, '/future'),
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () => Navigator.pushReplacementNamed(context, '/contact'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to TrotechXion',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Revolutionizing eyewear technology with Xzion - the future of smart glasses.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Our Story',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Founded by a solo entrepreneur with no team or external funding yet, TrotechXion is dedicated to creating innovative eyewear solutions that enhance human capabilities and connectivity.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Explore our app to learn more about Xzion eyewear, our technology, and future plans.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About TrotechXion'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Xzion Eyewear',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pushReplacementNamed(context, '/home'),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About TrotechXion'),
              onTap: () => Navigator.pushReplacementNamed(context, '/about'),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Xzion Features'),
              onTap: () => Navigator.pushReplacementNamed(context, '/features'),
            ),
            ListTile(
              leading: const Icon(Icons.timeline),
              title: const Text('Future Plans'),
              onTap: () => Navigator.pushReplacementNamed(context, '/future'),
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () => Navigator.pushReplacementNamed(context, '/contact'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About TrotechXion',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Founder & Vision',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'TrotechXion was founded by a passionate solo entrepreneur who recognized the potential of wearable technology to transform daily life. With no team or external funding yet, the founder is driven by a vision to create eyewear that seamlessly integrates advanced technology with everyday comfort.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Current Status',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'As a solo operation without funding, TrotechXion is currently in the early stages of product development. The founder handles all aspects of the business, from research and design to prototyping and market analysis. This lean approach allows for rapid iteration and direct customer feedback.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Mission',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'To democratize access to cutting-edge eyewear technology, making advanced features affordable and accessible to everyone, while maintaining the highest standards of quality and innovation.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class FeaturesScreen extends StatelessWidget {
  const FeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xzion Features'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Xzion Eyewear',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pushReplacementNamed(context, '/home'),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About TrotechXion'),
              onTap: () => Navigator.pushReplacementNamed(context, '/about'),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Xzion Features'),
              onTap: () => Navigator.pushReplacementNamed(context, '/features'),
            ),
            ListTile(
              leading: const Icon(Icons.timeline),
              title: const Text('Future Plans'),
              onTap: () => Navigator.pushReplacementNamed(context, '/future'),
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () => Navigator.pushReplacementNamed(context, '/contact'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Xzion Eyewear Features',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            _buildFeatureCard(
              'Advanced Optics',
              'High-definition lenses with anti-reflective coating for crystal-clear vision in all lighting conditions.',
            ),
            _buildFeatureCard(
              'Smart Connectivity',
              'Bluetooth integration for seamless connection with smartphones and other devices.',
            ),
            _buildFeatureCard(
              'Voice Control',
              'Built-in microphone and speaker for hands-free communication and voice commands.',
            ),
            _buildFeatureCard(
              'Health Monitoring',
              'Integrated sensors to track eye strain, UV exposure, and provide personalized wellness insights.',
            ),
            _buildFeatureCard(
              'Comfortable Design',
              'Lightweight titanium frame with adjustable nose pads and temple tips for all-day comfort.',
            ),
            _buildFeatureCard(
              'Long Battery Life',
              'Up to 48 hours of continuous use on a single charge with fast wireless charging.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String title, String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class FutureScreen extends StatelessWidget {
  const FutureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Plans'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Xzion Eyewear',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pushReplacementNamed(context, '/home'),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About TrotechXion'),
              onTap: () => Navigator.pushReplacementNamed(context, '/about'),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Xzion Features'),
              onTap: () => Navigator.pushReplacementNamed(context, '/features'),
            ),
            ListTile(
              leading: const Icon(Icons.timeline),
              title: const Text('Future Plans'),
              onTap: () => Navigator.pushReplacementNamed(context, '/future'),
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () => Navigator.pushReplacementNamed(context, '/contact'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Future Development Roadmap',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            _buildTimelineItem(
              'Q1 2024',
              'Complete initial prototyping and user testing phases.',
            ),
            _buildTimelineItem(
              'Q2 2024',
              'Launch crowdfunding campaign and secure initial funding.',
            ),
            _buildTimelineItem(
              'Q3 2024',
              'Build development team and expand manufacturing capabilities.',
            ),
            _buildTimelineItem(
              'Q4 2024',
              'Release first commercial version of Xzion eyewear.',
            ),
            _buildTimelineItem(
              '2025',
              'Expand product line with specialized models and accessories.',
            ),
            _buildTimelineItem(
              '2026',
              'International market expansion and partnership development.',
            ),
            const SizedBox(height: 20),
            const Text(
              'Investment Opportunities',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'TrotechXion is actively seeking angel investors and venture capital to accelerate development. As a solo founder, we offer unique investment potential with direct founder involvement and rapid decision-making.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineItem(String time, String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                time,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Xzion Eyewear',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pushReplacementNamed(context, '/home'),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About TrotechXion'),
              onTap: () => Navigator.pushReplacementNamed(context, '/about'),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Xzion Features'),
              onTap: () => Navigator.pushReplacementNamed(context, '/features'),
            ),
            ListTile(
              leading: const Icon(Icons.timeline),
              title: const Text('Future Plans'),
              onTap: () => Navigator.pushReplacementNamed(context, '/future'),
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () => Navigator.pushReplacementNamed(context, '/contact'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Get In Touch',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Founder',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'As a solo founder, I personally handle all communications and business development.',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Contact Methods',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('• Email: [Your Email Address]'),
                    const Text('• LinkedIn: [Your LinkedIn Profile]'),
                    const Text('• Phone: [Your Phone Number]'),
                    const SizedBox(height: 20),
                    const Text(
                      'We welcome inquiries from potential investors, partners, and early adopters.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
