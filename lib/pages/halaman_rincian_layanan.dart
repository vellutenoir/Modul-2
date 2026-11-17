import 'package:flutter/material.dart';

class HalamanRincianLayanan extends StatelessWidget {
  const HalamanRincianLayanan({
    super.key,
    required this.namaLayanan,
    required this.dinasPenanggungJawab,
    required this.jamOperasional,
    required this.keteranganSingkat,
  });

  final String namaLayanan;
  final String dinasPenanggungJawab;
  final String jamOperasional;
  final String keteranganSingkat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rincian Layanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              namaLayanan,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.corporate_fare, color: Colors.indigo),
                      title: const Text('Dinas Penanggung Jawab'),
                      subtitle: Text(dinasPenanggungJawab),
                    ),
                    const Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.access_time, color: Colors.indigo),
                      title: const Text('Jam Operasional'),
                      subtitle: Text(jamOperasional),
                    ),
                    const Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.description_outlined, color: Colors.indigo),
                      title: const Text('Keterangan Layanan'),
                      subtitle: Text(keteranganSingkat),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Kembali'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  flex: 2,
                  child: FilledButton.icon(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        'Permohonan $namaLayanan telah diajukan',
                      );
                    },
                    icon: const Icon(Icons.send),
                    label: const Text('Ajukan Permohonan'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
