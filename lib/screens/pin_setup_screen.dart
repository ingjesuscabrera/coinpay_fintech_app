import 'package:flutter/material.dart';
import '../app_router.dart';

class PinSetupScreen extends StatelessWidget {
  const PinSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Security PIN')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Icon(Icons.lock_outline, size: 72, color: Color(0xFF2563EB)),
            const SizedBox(height: 16),
            const Text('Set your 4-digit PIN',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Protect your account with a secure and memorable PIN.',
                textAlign: TextAlign.center),
            const SizedBox(height: 24),
            TextField(
              decoration: const InputDecoration(labelText: 'Enter PIN'),
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRouter.welcome),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2563EB),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Finish setup'),
            ),
          ],
        ),
      ),
    );
  }
}
