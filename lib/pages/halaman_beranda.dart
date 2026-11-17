import 'package:flutter/material.dart';

class HalamanBeranda extends StatelessWidget {
  const HalamanBeranda({super.key});

  final List<Map<String, dynamic>> _enamPilar = const [
    {
      'judul': 'Smart Governance',
      'deskripsi': 'Tata kelola pemerintahan transparan dan terintegrasi.',
      'ikon': Icons.account_balance,
    },
    {
      'judul': 'Smart Branding',
      'deskripsi': 'Penguatan daya saing pariwisata dan potensi daerah.',
      'ikon': Icons.campaign,
    },
    {
      'judul': 'Smart Economy',
      'deskripsi': 'Ekosistem UMKM digital dan transaksi non-tunai.',
      'ikon': Icons.storefront,
    },
    {
      'judul': 'Smart Living',
      'deskripsi': 'Kenyamanan hunian, kesehatan, dan transportasi publik.',
      'ikon': Icons.health_and_safety,
    },
    {
      'judul': 'Smart Society',
      'deskripsi': 'Masyarakat cakap digital dan keamanan lingkungan.',
      'ikon': Icons.groups,
    },
    {
      'judul': 'Smart Environment',
      'deskripsi': 'Pengelolaan sampah cerdas dan energi berkelanjutan.',
      'ikon': Icons.eco,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Datang di Nusantara Cerdas',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Portal Layanan Terpadu 6 Pilar Kota Cerdas untuk Warga Nusantara.',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Ringkasan Enam Pilar Smart City',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _enamPilar.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.15,
          ),
          itemBuilder: (context, index) {
            final pilar = _enamPilar[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(pilar['ikon'], size: 30, color: Colors.indigo),
                    const SizedBox(height: 8),
                    Text(
                      pilar['judul'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Expanded(
                      child: Text(
                        pilar['deskripsi'],
                        style: const TextStyle(fontSize: 12),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        OutlinedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, '/route-tidak-terdaftar');
          },
          icon: const Icon(Icons.bug_report_outlined),
          label: const Text('Uji Route Tidak Dikenal (onUnknownRoute)'),
        ),
      ],
    );
  }
}
