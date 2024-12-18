import 'dart:io';
import 'package:vania/vania.dart';
import 'create_users_table.dart';
import 'create_customer_table.dart';
import 'create_order_item_table.dart';
import 'create_order_table.dart';
import 'create_personal_access_token.dart';
import 'create_productnotes_table.dart';
import 'create_product_table.dart';
import 'create_todos_table.dart';
import 'create_vendors_table.dart';

void main(List<String> args) async {
  await MigrationConnection().setup();
  if (args.isNotEmpty && args.first.toLowerCase() == "migrate:fresh") {
    await Migrate().dropTables();
  } else {
    await Migrate().registry();
  }
  await MigrationConnection().closeConnection();
  exit(0);
}

class Migrate {
  registry() async {
		 await CreateCustomerTable().up();
		 await CreateVendorsTable().up();
		 await CreateProductTable().up();
		 await CreateProductnotesTable().up();
		 await CreateOrderTable().up();
		 await CreateOrderItemTable().up();
		 await CreateUserTable().up();
		 await CreatePersonalAccessToken().up();
		 await CreateTodosTable().up();
	}

  dropTables() async {
		 await CreateVendorsTable().down();
		 await CreateTodosTable().down();
		 await CreateProductTable().down();
		 await CreateProductnotesTable().down();
		 await CreatePersonalAccessToken().down();
		 await CreateOrderTable().down();
		 await CreateOrderItemTable().down();
		 await CreateCustomerTable().down();
		 await CreateUserTable().down();
	 }
}
