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
    await _saveAll(items: items);
  }

  @override
  Future<List<Client>> get() async {
    final prefs = await SharedPreferences.getInstance();

    final data = prefs.getString(_key);

    if (data == null) return [];

    final List<dynamic> items = jsonDecode(data);

    await Future.delayed(Duration(seconds: 2));

    return items.map((item) => Client.fromJson(item)).toList();
  }

  @override
  Future<void> delete({required Client item}) async {
    final items = await get();
    items.removeWhere((client) => item.id == client.id);
    await _saveAll(items: items);
  }

  @override
  Future<void> put({required Client item}) async {
    final items = await get();
    final index = items.indexWhere((client) => item.id == client.id);
    items[index] = item;
    await _saveAll(items: items);
  }

  Future<void> _saveAll({required List<Client> items}) async {
    final prefs = await SharedPreferences.getInstance();
    final data = jsonEncode(items.map((item) => item.toJson()).toList());
    await prefs.setString(_key, data);
  }
}
