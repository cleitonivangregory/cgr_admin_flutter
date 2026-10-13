
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class ModuleCard extends StatelessWidget {
  const new({super.key, required this.icon, required this.title, this.onTap});

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        clipBehavior: .antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: .center,
            mainAxisSize: .min,
            children: [
              Icon(Icons.people_outline, size: 40),
              const SizedBox(height: 12),
              Text('Clientes', textAlign: .center),
            ],
          ),
        ),
      ),
    );
  }
}
