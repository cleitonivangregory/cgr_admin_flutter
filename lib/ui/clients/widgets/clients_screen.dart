import 'package:cgr_admin_flutter/routing/routes.dart';
import 'package:cgr_admin_flutter/ui/clients/view_models/clients_view_model.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class ClientsScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  final viewModel = ClientsViewModel();

  @override
  Widget build(BuildContext context) {
    return CGRListScreen(
      title: 'Clientes',
      viewModel: viewModel,
      itemBuilder: (context, index) {
        final item = viewModel.items[index];
        return ListTile(
          leading: Text('$index'),
          title: Text(item.name),
          subtitle: Text(item.name),
        );
      },
      nextScreen: AppRoutes.clientNew,
    );
  }
}
