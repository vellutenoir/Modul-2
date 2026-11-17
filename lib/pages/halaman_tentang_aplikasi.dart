import 'package:flutter/material.dart';

class HalamanTentangAplikasi extends StatelessWidget {
  const HalamanTentangAplikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.location_city, size: 56, color: Colors.indigo),
            SizedBox(height: 12),
            Text(
              'Nusantara Cerdas Mobile',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Aplikasi Layanan Warga Smart City yang mengimplementasikan navigasi Material Design 3 adaptif (NavigationBar, NavigationRail, NavigationDrawer, TabBar, BottomAppBar, dan Named Routes).',
            ),
            SizedBox(height: 16),
            Text('Pengembang: Vayola Aura Mecca (707012400012)'),
            Text('Kelas: D4SIKC-48-03 • Telkom University'),
          ],
        ),
      ),
    );
  }
}