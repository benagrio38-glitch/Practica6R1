// Prueba de la app: lista de carreras, detalle y botón Regresar.
import 'package:flutter_test/flutter_test.dart';

import 'package:universidad_ti/main.dart';

void main() {
  testWidgets('abre el detalle de una carrera y regresa a la lista',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Universidad TI'), findsOneWidget);
    expect(find.text('Ingeniería en Desarrollo de Software'), findsOneWidget);

    await tester.tap(find.text('Ingeniería en Desarrollo de Software'));
    await tester.pumpAndSettle();

    expect(find.text('Contenido'), findsOneWidget);
    expect(find.text('Regresar'), findsOneWidget);

    await tester.tap(find.text('Regresar'));
    await tester.pumpAndSettle();

    expect(find.text('Universidad TI'), findsOneWidget);
    expect(find.text('Contenido'), findsNothing);
  });
}
