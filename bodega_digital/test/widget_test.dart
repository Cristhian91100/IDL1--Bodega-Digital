import 'package:flutter_test/flutter_test.dart';
import 'package:bodega_digital/main.dart'; 

void main() {
  testWidgets('Verify that the app builds correctly', (WidgetTester tester) async {
   
    await tester.pumpWidget(const BodegaDigitalApp()); 

    expect(find.text('Listado de Productos'), findsOneWidget);
  });
}
