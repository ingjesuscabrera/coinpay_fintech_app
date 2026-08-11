import 'package:flutter/material.dart';
import '../app_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FB),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: const Color(0xFFE2E8F0),
                    child: const Icon(Icons.person, color: Color(0xFF0F172A)),
                  ),
                  const Spacer(),
                  const Text(
                    'Coinpay',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0F172A)),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E8F0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(Icons.notifications,
                        color: Color(0xFF0F172A)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      blurRadius: 24,
                      offset: const Offset(0, 16),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/profile_placeholder.png'),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0EA5E9),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: const Icon(Icons.settings,
                              color: Colors.white, size: 18),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'Alexander Sterling',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF0F172A)),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'alexander.sterling@example.com',
                      style: TextStyle(color: Color(0xFF64748B)),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0F2FE),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.star, size: 16, color: Color(0xFF0EA5E9)),
                          SizedBox(width: 8),
                          Text('Premium Member',
                              style: TextStyle(
                                  color: Color(0xFF0F172A),
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _sectionCard(
                        context,
                        title: 'Account Settings',
                        subtitle: 'Personal details, preferences',
                        icon: Icons.manage_accounts_outlined,
                        onTap: () {},
                      ),
                      const SizedBox(height: 12),
                      _sectionCard(
                        context,
                        title: 'Security',
                        subtitle: 'Password, 2FA, Biometrics',
                        icon: Icons.shield_outlined,
                        onTap: () =>
                            Navigator.of(context).pushNamed(AppRouter.pinSetup),
                      ),
                      const SizedBox(height: 18),
                      _sectionCard(
                        context,
                        title: 'Linked Cards',
                        subtitle: 'Manage payment methods',
                        icon: Icons.credit_card_outlined,
                        onTap: () => Navigator.of(context)
                            .pushNamed(AppRouter.addingCard),
                      ),
                      const SizedBox(height: 12),
                      _sectionCard(
                        context,
                        title: 'Bank Accounts',
                        subtitle: 'Withdrawal destinations',
                        icon: Icons.account_balance_outlined,
                        onTap: () {},
                      ),
                      const SizedBox(height: 18),
                      _sectionCard(
                        context,
                        title: 'Notification Settings',
                        subtitle: 'Manage your alerts',
                        icon: Icons.notifications_active_outlined,
                        onTap: () {},
                      ),
                      const SizedBox(height: 12),
                      _sectionCard(
                        context,
                        title: 'Help & Support',
                        subtitle: 'Get assistance',
                        icon: Icons.help_outline,
                        onTap: () =>
                            Navigator.of(context).pushNamed(AppRouter.support),
                      ),
                      const SizedBox(height: 28),
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: OutlinedButton.icon(
                          onPressed: () => Navigator.of(context)
                              .pushNamedAndRemoveUntil(
                                  AppRouter.splash, (route) => false),
                          icon: const Icon(Icons.logout,
                              color: Color(0xFFDC2626)),
                          label: const Text('Logout',
                              style: TextStyle(
                                  color: Color(0xFFDC2626),
                                  fontWeight: FontWeight.w700)),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xFFDC2626)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionCard(BuildContext context,
      {required String title,
      required String subtitle,
      required IconData icon,
      required VoidCallback onTap}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: const Color(0xFFEEF2FF),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: const Color(0xFF0F172A)),
        ),
        title: Text(title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
        subtitle:
            Text(subtitle, style: const TextStyle(color: Color(0xFF64748B))),
        trailing: const Icon(Icons.arrow_forward_ios,
            size: 18, color: Color(0xFF94A3B8)),
      ),
    );
  }
}
