import '../../utils/basic_screen_imports.dart';
import '/backend/local_storage/local_storage.dart';
import '/controller/basic_settings/basic_settings_controller.dart';

class LogoWidget extends StatelessWidget {
  final double scale;
  LogoWidget({super.key, this.scale = 16});
  final basicSettingController = Get.put(BasicSettingsController());

  @override
  Widget build(BuildContext context) {
    return Image.network(
      LocalStorage.getImage().toString(),
      scale: scale,
    );
  }
}
