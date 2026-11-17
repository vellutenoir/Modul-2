import 'package:flutter/material.dart';
import 'kerangka_navigasi.dart';
import '../pages/halaman_rincian_layanan.dart';
import '../pages/halaman_riwayat_laporan.dart';
import '../pages/halaman_pengaturan_kota.dart';
import '../pages/halaman_tentang_aplikasi.dart';

class AppRoutes {
  static const String beranda = '/';
  static const String rincianLayanan = '/rincian-layanan';
  static const String riwayatLaporan = '/riwayat-laporan';
  static const String pengaturanKota = '/pengaturan-kota';
  static const String tentangAplikasi = '/tentang-aplikasi';

  static Map<String, WidgetBuilder> daftarRoute() {
    return {
      beranda: (context) => const KerangkaNavigasi(),
      riwayatLaporan: (context) => const HalamanRiwayatLaporan(),
      pengaturanKota: (context) => const HalamanPengaturanKota(),
      tentangAplikasi: (context) => const HalamanTentangAplikasi(),
    };
  }

  static Route<dynamic>? bentukRoute(RouteSettings settings) {
    if (settings.name == rincianLayanan) {
      final argumen = settings.arguments as Map<String, String>? ?? const {};
      return MaterialPageRoute(
        builder: (context) => HalamanRincianLayanan(
          namaLayanan: argumen['namaLayanan'] ?? 'Layanan Publik',
          dinasPenanggungJawab: argumen['dinas'] ?? 'Pemerintah Kota Nusantara',
          jamOperasional: argumen['jam'] ?? '08.00 - 16.00 WIB',
          keteranganSingkat: argumen['keterangan'] ?? 'Informasi layanan publik digital Kota Nusantara.',
        ),
      );
    }
    return null;
  }

  static Route<dynamic> routeTidakDikenal(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(title: const Text('Route Tidak Ditemukan')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 72, color: Colors.redAccent),
                const SizedBox(height: 16),
                const Text(
                  'Halaman Tidak Terdaftar',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Route "${settings.name}" belum terdaftar di sistem Nusantara Cerdas.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                FilledButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Kembali'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
