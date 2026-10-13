import 'package:cgr_admin_flutter/data/repositories/clients_repository.dart';
import 'package:cgr_admin_flutter/domain/models/client.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class ClientViewModel extends CGRFormViewModel<Client> {
  new() : super(repository: ClientsRepository());

  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Client prepareItem() {
    return Client(name: nameController.text);
  }
}
