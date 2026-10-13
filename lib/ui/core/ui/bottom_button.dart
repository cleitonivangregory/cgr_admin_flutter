
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class AppBottomButton extends StatelessWidget {
  const new({super.key, this.onPressed, required this.label});

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 8),
      child: SizedBox(
        width: double.infinity,
        child: FilledButton(onPressed: onPressed, child: Text(label)),
      ),
    );
  }
}
