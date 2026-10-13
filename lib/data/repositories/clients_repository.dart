import 'package:cgr_admin_flutter/data/services/clients_service.dart';
import 'package:cgr_admin_flutter/domain/models/client.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

class ClientsRepository extends CGRRepository<Client> {
  new() : super(service: ClientsService());
}
