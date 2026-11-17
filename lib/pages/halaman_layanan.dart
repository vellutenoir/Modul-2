import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HalamanLayanan extends StatelessWidget {
  const HalamanLayanan({super.key});

  final List<Map<String, String>> _perizinan = const [
    {
      'nama': 'Izin Usaha Mikro (IUMK)',
      'dinas': 'Dinas Penanaman Modal dan PTSP',
      'jam': 'Senin - Jumat, 08.00 - 15.30 WIB',
      'keterangan': 'Penerbitan legalitas usaha mikro dan kecil berbasis Nomor Induk Berusaha secara daring.',
    },
    {
      'nama': 'Izin Mendirikan Bangunan (PBG)',
      'dinas': 'Dinas Pekerjaan Umum dan Penataan Ruang',
      'jam': 'Senin - Jumat, 08.00 - 16.00 WIB',
      'keterangan': 'Persetujuan Bangunan Gedung untuk hunian warga maupun tempat komersial.',
    },
    {
      'nama': 'Izin Keramaian & Acara Publik',
      'dinas': 'Satpol PP & Kesbangpol Kota Nusantara',
      'jam': 'Senin - Sabtu, 08.00 - 16.00 WIB',
      'keterangan': 'Pengajuan rekomendasi kegiatan masyarakat, bazar UMKM, dan acara seni budaya.',
    },
  ];

  final List<Map<String, String>> _kesehatan = const [
    {
      'nama': 'Antrean Online Puskesmas',
      'dinas': 'Dinas Kesehatan Kota Nusantara',
      'jam': 'Setiap Hari, 07.00 - 21.00 WIB',
      'keterangan': 'Pendaftaran nomor antrean poli umum, poli gigi, dan KIA tanpa mengantre lama di lokasi.',
    },
    {
      'nama': 'Layanan Ambulans Gawat Darurat 119',
      'dinas': 'Public Safety Center (PSC) 119',
      'jam': '24 Jam Nonstop',
      'keterangan': 'Permintaan penjemputan darurat medis gratis bagi seluruh warga ber-KTP Nusantara.',
    },
    {
      'nama': 'Skrining & Imunisasi Balita',
      'dinas': 'Dinas Kesehatan & Posyandu Terpadu',
      'jam': 'Senin - Sabtu, 08.00 - 13.00 WIB',
      'keterangan': 'Pendaftaran jadwal imunisasi dasar lengkap dan pemantauan tumbuh kembang anak.',
    },
  ];

  final List<Map<String, String>> _transportasi = const [
    {
      'nama': 'Kartu Langganan Bus Listrik Kota',
      'dinas': 'Dinas Perhubungan Kota Nusantara',
      'jam': 'Setiap Hari, 05.30 - 22.00 WIB',
      'keterangan': 'Aktivasi tarif khusus pelajar, mahasiswa, dan lansia untuk koridor Bus Listrik Nusantara.',
    },
    {
      'nama': 'Uji Kir Kendaraan Bermotor',
      'dinas': 'UPTD Pengujian Kendaraan Bermotor',
      'jam': 'Senin - Jumat, 08.00 - 15.00 WIB',
      'keterangan': 'Booking jadwal uji kelayakan kendaraan angkutan barang dan penumpang secara nontunai.',
    },
    {
      'nama': 'Permohonan Rekayasa Lalu Lintas',
      'dinas': 'Bidang Lalu Lintas Dishub',
      'jam': 'Senin - Jumat, 08.00 - 16.00 WIB',
      'keterangan': 'Pengajuan pengalihan arus lalu lintas sementara untuk pekerjaan utilitas atau hajatan warga.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.assignment_outlined), text: 'Perizinan'),
              Tab(icon: Icon(Icons.local_hospital_outlined), text: 'Kesehatan'),
              Tab(icon: Icon(Icons.directions_bus_outlined), text: 'Transportasi'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buatDaftarLayanan(context, _perizinan),
                _buatDaftarLayanan(context, _kesehatan),
                _buatDaftarLayanan(context, _transportasi),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buatDaftarLayanan(BuildContext context, List<Map<String, String>> daftar) {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: daftar.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (itemContext, indeks) {
        final item = daftar[indeks];
        return ListTile(
          leading: const CircleAvatar(
            child: Icon(Icons.public),
          ),
          title: Text(item['nama']!, style: const TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Text(item['dinas']!),
          trailing: const Icon(Icons.chevron_right),
          onTap: () async {
            final hasil = await Navigator.pushNamed(
              itemContext,
              AppRoutes.rincianLayanan,
              arguments: {
                'namaLayanan': item['nama']!,
                'dinas': item['dinas']!,
                'jam': item['jam']!,
                'keterangan': item['keterangan']!,
              },
            );

            if (!itemContext.mounted) return;
            if (hasil is String && hasil.isNotEmpty) {
              ScaffoldMessenger.of(itemContext).showSnackBar(
                SnackBar(
                  content: Text(hasil),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            }
          },
        );
      },
    );
  }
}
