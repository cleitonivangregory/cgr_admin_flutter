import 'package:cgr_admin_flutter/routing/router.dart';
import 'package:cgr_admin_flutter/ui/core/themes/theme.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

void main() {
  runApp(
    CGRApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: routerConfig,
    ),
  );
}
