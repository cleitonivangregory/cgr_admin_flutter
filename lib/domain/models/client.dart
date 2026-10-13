import 'package:cgr_core_flutter/domain/models/_exports.dart';
import 'package:uuid/uuid.dart';

class Client extends CGRModel {
  new({String? id, required this.name}) : id = id ?? const Uuid().v4();

  final String id;
  final String name;

  factory Client.fromJson(Map<String, dynamic> map) {
    return Client(id: map['id'], name: map['name']);
  }

  @override
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }
}
