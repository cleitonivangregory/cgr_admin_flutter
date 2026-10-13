import 'dart:convert';

import 'package:cgr_admin_flutter/domain/models/client.dart';
import 'package:cgr_core_flutter/data/services/service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ClientsService extends CGRService<Client> {
  static const _key = 'clients';

  @override
  Future<void> post({required Client item}) async {
    final items = await get();
    items.add(item);

    final data = jsonEncode(items.map((item) => item.toJson()).toList());

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, data);
  }

  @override
  Future<List<Client>> get() async {
    final prefs = await SharedPreferences.getInstance();

    final data = prefs.getString(_key);

    if (data == null) return [];

    final List<dynamic> items = jsonDecode(data);

    return items.map((item) => Client.fromJson(item)).toList();
  }

  @override
  Future<void> delete({required Client item}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> put({required Client item}) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
