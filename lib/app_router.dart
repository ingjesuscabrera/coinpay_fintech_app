import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/account_setup_screen.dart';
import 'screens/account_verification_screen.dart';
import 'screens/pin_setup_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/adding_card_screen.dart';
import 'screens/homepage_screen.dart';
import 'screens/send_money_screen.dart';
import 'screens/receive_money_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/support_screen.dart';
import 'screens/transaction_details_screen.dart';
import 'screens/not_found_screen.dart';

class AppRouter {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String registration = '/registration';
  static const String accountSetup = '/account-setup';
  static const String accountVerification = '/account-verification';
  static const String pinSetup = '/pin-setup';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String addingCard = '/adding-card';
  static const String homepage = '/homepage';
  static const String sendMoney = '/send';
  static const String receiveMoney = '/receive';
  static const String profile = '/profile';
  static const String support = '/support';
  static const String transaction = '/transaction';
  static const String notFound = '/404';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case registration:
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      case accountSetup:
        return MaterialPageRoute(builder: (_) => const AccountSetupScreen());
      case accountVerification:
        return MaterialPageRoute(
            builder: (_) => const AccountVerificationScreen());
      case pinSetup:
        return MaterialPageRoute(builder: (_) => const PinSetupScreen());
      case welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case addingCard:
        return MaterialPageRoute(builder: (_) => const AddingCardScreen());
      case homepage:
        return MaterialPageRoute(builder: (_) => const HomepageScreen());
      case sendMoney:
        return MaterialPageRoute(builder: (_) => const SendMoneyScreen());
      case receiveMoney:
        return MaterialPageRoute(builder: (_) => const ReceiveMoneyScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case support:
        return MaterialPageRoute(builder: (_) => const SupportScreen());
      case transaction:
        return MaterialPageRoute(
            builder: (_) => const TransactionDetailsScreen());
      case notFound:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}
