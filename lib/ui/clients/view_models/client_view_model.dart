import 'package:cgr_admin_flutter/data/repositories/clients_repository.dart';
import 'package:cgr_admin_flutter/domain/models/client.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class ClientViewModel extends CGRFormViewModel<Client> {
  new({this.item})
    : nameController = TextEditingController(text: item?.name),
      super(repository: ClientsRepository());

  final Client? item;
  late final TextEditingController nameController;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  bool get isEdit => item?.id != '';

  @override
  Client prepareItem() {
    return Client(id: item?.id, name: nameController.text);
  }
}
