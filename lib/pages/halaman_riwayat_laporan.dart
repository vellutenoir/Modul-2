import 'package:flutter/material.dart';

class HalamanRiwayatLaporan extends StatelessWidget {
  const HalamanRiwayatLaporan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Laporan Warga'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Lampu PJU Padam Jl. Merdeka'),
              subtitle: Text('Status: Selesai Ditangani • 14 Nov 2026'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.pending_actions, color: Colors.orange),
              title: Text('Pengajuan IUMK Kedai Kopi'),
              subtitle: Text('Status: Verifikasi Berkas • 16 Nov 2026'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.schedule, color: Colors.indigo),
              title: Text('Antrean Poli Umum Puskesmas'),
              subtitle: Text('Status: Terjadwal • 17 Nov 2026'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Buat laporan warga baru')),
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Cari Laporan',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Fitur pencarian laporan')),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.filter_list),
              tooltip: 'Filter Status',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Filter berdasarkan status laporan')),
                );
              },
            ),
            const SizedBox(width: 40),
            IconButton(
              icon: const Icon(Icons.sort),
              tooltip: 'Urutkan Tanggal',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Urutkan dari laporan terbaru')),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.share_outlined),
              tooltip: 'Ekspor Riwayat',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Mengunduh rekap laporan')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
