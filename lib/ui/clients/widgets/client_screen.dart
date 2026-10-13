import 'package:cgr_admin_flutter/ui/clients/view_models/client_view_model.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class ClientScreen extends StatelessWidget {
  new({super.key});

  final viewModel = ClientViewModel();

  @override
  Widget build(BuildContext context) {
    return CGRFormScreen(
      title: 'Novo Cliente',
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
