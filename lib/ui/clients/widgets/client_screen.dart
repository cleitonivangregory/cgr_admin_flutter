import 'package:cgr_admin_flutter/ui/clients/view_models/client_view_model.dart';
import 'package:cgr_admin_flutter/ui/core/ui/bottom_button.dart';
import 'package:cgr_admin_flutter/ui/core/ui/scaffold.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class ClientScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ClientScreen> createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  final viewModel = ClientViewModel();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: Text('Novo cliente')),
      body: Form(
        key: _formKey,
        child: Column(
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
        ),
      ),
      bottomNavigationBar: AppBottomButton(
        label: 'Salvar',
        onPressed: () async {
          if (!_formKey.currentState!.validate()) return;

          try {
            await viewModel.save();
            if (!context.mounted) return;
            context.pop(true);
          } catch (e) {
            if (!context.mounted) return;
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Não foi possível salvar o cliente.'),
              ),
            );
          }
        },
      ),
    );
  }
}
