import 'package:flutter/material.dart';

class HalamanPengaturanKota extends StatefulWidget {
  const HalamanPengaturanKota({super.key});

  @override
  State<HalamanPengaturanKota> createState() => _HalamanPengaturanKotaState();
}

class _HalamanPengaturanKotaState extends State<HalamanPengaturanKota> {
  bool _notifikasiDarurat = true;
  bool _infoLayananPublik = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Kota'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Peringatan Dini & Darurat Kota'),
            subtitle: const Text('Terima notifikasi cuaca ekstrem dan info PSC 119'),
            value: _notifikasiDarurat,
            onChanged: (val) => setState(() => _notifikasiDarurat = val),
          ),
          const Divider(height: 1),
          SwitchListTile(
            title: const Text('Pembaruan Status Permohonan'),
            subtitle: const Text('Notifikasi otomatis saat pengajuan layanan diproses'),
            value: _infoLayananPublik,
            onChanged: (val) => setState(() => _infoLayananPublik = val),
          ),
        ],
      ),
    );
  }
}
