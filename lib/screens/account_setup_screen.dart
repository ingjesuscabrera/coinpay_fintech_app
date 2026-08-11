import 'package:flutter/material.dart';
import '../app_router.dart';

class AccountSetupScreen extends StatefulWidget {
  const AccountSetupScreen({super.key});

  @override
  State<AccountSetupScreen> createState() => _AccountSetupScreenState();
}

class _AccountSetupScreenState extends State<AccountSetupScreen> {
  bool _dateFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon:
                        const Icon(Icons.arrow_back, color: Color(0xFF334155)),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  const Expanded(
                    child: Text(
                      'Coinpay',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0F172A)),
                    ),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _stepIndicator(true),
                  const SizedBox(width: 6),
                  _stepIndicator(true),
                  const SizedBox(width: 6),
                  _stepIndicator(false),
                  const SizedBox(width: 6),
                  _stepIndicator(false),
                  const Spacer(),
                  const Text('STEP 2 OF 4',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF475569))),
                ],
              ),
              const SizedBox(height: 28),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Personal Details',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF0F172A))),
              ),
              const SizedBox(height: 8),
              const Text(
                'We need a few more details to verify your identity and secure your account.',
                style: TextStyle(fontSize: 15, color: Color(0xFF64748B)),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 24,
                        offset: const Offset(0, 12),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Date of Birth',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.2)),
                        const SizedBox(height: 12),
                        _buildDateField(context),
                        const SizedBox(height: 18),
                        const Text('Phone Number',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.2)),
                        const SizedBox(height: 12),
                        _buildPhoneField(),
                        const SizedBox(height: 22),
                        const Text('Home Address',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 18),
                        _buildAddressField('Street Address',
                            '123 Financial Ave', Icons.home_outlined),
                        const SizedBox(height: 16),
                        _buildAddressField('Apt, Suite, etc. (Optional)',
                            'Suite 400', Icons.apartment_outlined),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                                child: _buildAddressField('City', 'New York',
                                    Icons.location_city_outlined,
                                    isFixedHeight: true)),
                            const SizedBox(width: 12),
                            Expanded(
                                child: _buildAddressField('Zip Code', '10001',
                                    Icons.list_alt_outlined,
                                    isFixedHeight: true)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .pushNamed(AppRouter.accountVerification),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0EA5E9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    elevation: 0,
                  ),
                  child: const Text('Continue',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                ),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.lock_outline, size: 18, color: Color(0xFF94A3B8)),
                  SizedBox(width: 8),
                  Text('SECURE 256-BIT ENCRYPTION',
                      style: TextStyle(
                          letterSpacing: 0.6,
                          fontSize: 12,
                          color: Color(0xFF94A3B8))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDateField(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime(1995, 1, 1),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          initialEntryMode: DatePickerEntryMode.calendar,
        );
        if (selectedDate != null) {
          // No controller stored; leaving this field static for demo.
        }
      },
      child: Container(
        height: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFFCBD5E1)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          children: const [
            Icon(Icons.calendar_today_outlined, color: Color(0xFF475569)),
            SizedBox(width: 12),
            Expanded(
                child: Text('mm/dd/yyyy',
                    style: TextStyle(fontSize: 16, color: Color(0xFF64748B)))),
            Icon(Icons.calendar_month, color: Color(0xFF94A3B8)),
          ],
        ),
      ),
    );
  }

  Widget _buildPhoneField() {
    return Container(
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFCBD5E1)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: const [
          Icon(Icons.phone_android_outlined, color: Color(0xFF475569)),
          SizedBox(width: 12),
          Expanded(
              child: Text('+1 (555) 000-0000',
                  style: TextStyle(fontSize: 16, color: Color(0xFF64748B)))),
        ],
      ),
    );
  }

  Widget _buildAddressField(String label, String hint, IconData icon,
      {bool isFixedHeight = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(
                fontWeight: FontWeight.w600, letterSpacing: 0.3)),
        const SizedBox(height: 8),
        Container(
          height: isFixedHeight ? 58 : null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFCBD5E1)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Icon(icon, color: const Color(0xFF475569)),
              const SizedBox(width: 12),
              Expanded(
                child: Text(hint,
                    style: const TextStyle(
                        fontSize: 16, color: Color(0xFF64748B))),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _stepIndicator(bool active) {
    return Expanded(
      child: Container(
        height: 6,
        decoration: BoxDecoration(
          color: active ? const Color(0xFF0EA5E9) : const Color(0xFFE2E8F0),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
