import 'package:flutter/material.dart';
import '../app_router.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hello, Sofia',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Balance: \$12,450.00',
                style: TextStyle(fontSize: 18, color: Color(0xFF2563EB))),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: _ActionCard(
                    title: 'Send',
                    icon: Icons.send,
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRouter.sendMoney),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _ActionCard(
                    title: 'Receive',
                    icon: Icons.call_received,
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRouter.receiveMoney),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Recent activity',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ListTile(
              leading: const Icon(Icons.arrow_upward, color: Color(0xFF2563EB)),
              title: const Text('Payment sent'),
              subtitle: const Text('Today • 10:30 AM'),
              trailing: const Text('- \$240.00'),
              onTap: () =>
                  Navigator.of(context).pushNamed(AppRouter.transaction),
            ),
            ListTile(
              leading:
                  const Icon(Icons.arrow_downward, color: Color(0xFF10B981)),
              title: const Text('Salary received'),
              subtitle: const Text('Yesterday • 9:15 AM'),
              trailing: const Text('+ \$1500.00'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.support_agent), label: 'Support'),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.of(context).pushNamed(AppRouter.profile);
          } else if (index == 2) {
            Navigator.of(context).pushNamed(AppRouter.support);
          }
        },
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _ActionCard(
      {required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFF8FAFC),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Icon(icon, size: 28, color: const Color(0xFF2563EB)),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
