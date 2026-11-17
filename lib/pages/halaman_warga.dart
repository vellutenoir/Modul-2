import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HalamanWarga extends StatelessWidget {
  const HalamanWarga({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const CircleAvatar(
          radius: 42,
          child: Icon(Icons.person, size: 42),
        ),
        const SizedBox(height: 12),
        const Center(
          child: Text(
            'Vayola Aura Mecca',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const Center(
          child: Text('NIM: 707012400012 • Warga Terverifikasi'),
        ),
        const SizedBox(height: 20),
        const Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.badge_outlined),
                title: Text('NIK / ID Warga'),
                subtitle: Text('3273012400012001'),
              ),
              Divider(height: 1),
              ListTile(
                leading: Icon(Icons.location_on_outlined),
                title: Text('Kecamatan Domisili'),
                subtitle: Text('Kecamatan Nusantara Tengah'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        FilledButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.riwayatLaporan);
          },
          icon: const Icon(Icons.history),
          label: const Text('Buka Riwayat Laporan Warga'),
        ),
      ],
    );
  }
}