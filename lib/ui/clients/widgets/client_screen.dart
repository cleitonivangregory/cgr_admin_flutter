import 'package:cgr_admin_flutter/domain/models/client.dart';
import 'package:cgr_admin_flutter/ui/clients/view_models/client_view_model.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class ClientScreen extends StatefulWidget {
  const new({super.key, this.item});

  final Client? item;

  @override
  State<ClientScreen> createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  late final ClientViewModel viewModel;

  @override
  void initState() {
    super.initState();

    viewModel = ClientViewModel(item: widget.item);
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CGRFormScreen(
      viewModel: viewModel,
      children: [
        TextFormField(
          controller: viewModel.nameController,
          decoration: const InputDecoration(
            labelText: 'Nome',
            border: OutlineInputBorder(),
          ),
          textCapitalization: .words,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Informe o nome';
            }
            return null;
          },
        ),
      ],
    );
  }
}
