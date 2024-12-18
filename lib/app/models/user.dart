import 'package:vania/vania.dart';
import 'package:tugas_pml__1_8_8/app/utils/generate_id.dart';

class Users extends Model {
  Users() {
    super.table('users');
  }
  String generateId() {
    const characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    return Utils.generateId(5, characters);
  }
}
