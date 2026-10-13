import 'package:cgr_admin_flutter/routing/routes.dart';
import 'package:cgr_admin_flutter/ui/clients/view_models/clients_view_model.dart';
import 'package:cgr_admin_flutter/ui/core/ui/bottom_button.dart';
import 'package:cgr_admin_flutter/ui/core/ui/scaffold.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class ClientsScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  late final ClientsViewModel viewModel;

  @override
  void initState() {
    super.initState();

    viewModel = ClientsViewModel();
    viewModel.load();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: Text('Clientes')),
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, child) {
          return RefreshIndicator(
            onRefresh: viewModel.load,
            child: ListView.builder(
              itemCount: viewModel.items.length,
              itemBuilder: (context, index) {
                final item = viewModel.items[index];
                return Card(
                  child: ListTile(
                    leading: Text(item.name),
                    title: Text(item.name),
                    subtitle: Text(item.id),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: AppBottomButton(
        label: 'Novo cliente',
        onPressed: () => context.push(AppRoutes.clientNew),
      ),
    );
  }
}
