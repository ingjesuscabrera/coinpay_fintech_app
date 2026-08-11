import 'package:flutter_test/flutter_test.dart';

import 'package:coinpay_fintech_app/main.dart';

void main() {
  testWidgets('shows the splash screen on startup', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('CoinPay'), findsOneWidget);
    expect(find.text('Fintech made simple'), findsOneWidget);
  });
}
