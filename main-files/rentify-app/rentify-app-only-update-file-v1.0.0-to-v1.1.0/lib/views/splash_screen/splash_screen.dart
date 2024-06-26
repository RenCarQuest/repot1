import '/utils/basic_screen_imports.dart';
import '/utils/responsive_layout.dart';
import '/views/splash_screen/splash_screen_mobile.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: SplashScreenMobile(),
    );
  }
}
