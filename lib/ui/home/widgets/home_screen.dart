import 'package:cgr_admin_flutter/routing/routes.dart';
import 'package:cgr_admin_flutter/ui/core/ui/scaffold.dart';
import 'package:cgr_admin_flutter/ui/home/widgets/module_card.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: ListTile(
          leading: Text('CGR'),
          title: Text('Admin'),
          subtitle: Text('Painel administrativo'),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        padding: EdgeInsets.all(16),
        children: [
          ModuleCard(
            icon: Icons.person_2_outlined,
            title: 'Clientes',
            onTap: () => context.push(AppRoutes.clients),
          ),
        ],
      ),
    );
  }
}
