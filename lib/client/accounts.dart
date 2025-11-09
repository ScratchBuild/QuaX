import 'package:quax/database/entities.dart';
import 'package:quax/database/repository.dart';

Future<List<Account>> getAccounts() async {
  var database = await Repository.readOnly();
  var query = await database.query(tableAccounts);
  return List.from(query).map((e) => Account.fromMap(e)).toList();
}