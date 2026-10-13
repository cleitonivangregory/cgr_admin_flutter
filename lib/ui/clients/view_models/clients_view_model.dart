import 'package:cgr_admin_flutter/data/repositories/clients_repository.dart';
import 'package:cgr_admin_flutter/domain/models/client.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class ClientsViewModel extends CGRListViewModel<Client> {
  new() : super(repository: ClientsRepository());
}
