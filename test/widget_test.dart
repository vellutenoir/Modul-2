import 'package:flutter_test/flutter_test.dart';
import 'package:nusantara_cerdas_nav_707012400012/main.dart';

void main() {
  testWidgets('Uji tampilan awal Nusantara Cerdas Mobile', (WidgetTester tester) async {
    await tester.pumpWidget(const AplikasiNusantaraCerdas());
    expect(find.text('Beranda Smart City'), findsOneWidget);
  });
}