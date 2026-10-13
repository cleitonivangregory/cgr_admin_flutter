import 'package:cgr_admin_flutter/ui/core/themes/colors.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

abstract final class AppTheme {
  static final light = CGRTheme.theme(
    brightness: .light,
    primary: AppLightColors.primary,
    secondary: AppLightColors.secondary,
    surface: AppLightColors.surface,
  );

  static final ThemeData dark = CGRTheme.theme(
    brightness: .light,
    primary: AppDarkColors.primary,
    secondary: AppDarkColors.secondary,
    surface: AppDarkColors.surface,
  );
}
