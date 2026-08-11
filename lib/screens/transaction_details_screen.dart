import 'package:flutter/material.dart';
import '../app_router.dart';

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaction details')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Payment sent',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('Amount: \$240.00', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            const Text('Status: Completed',
                style: TextStyle(fontSize: 16, color: Color(0xFF10B981))),
            const SizedBox(height: 8),
            const Text('Reference: TRX-1024', style: TextStyle(fontSize: 16)),
            const Spacer(),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRouter.homepage),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2563EB),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Back to home'),
            ),
          ],
        ),
      ),
    );
  }
}
