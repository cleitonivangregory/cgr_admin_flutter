import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class AppScaffold extends StatelessWidget {
  const new({super.key, this.appBar, this.body, this.bottomNavigationBar});

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
