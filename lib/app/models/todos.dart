import 'package:vania/vania.dart';
import 'package:tugas_pml__1_8_8/app/utils/generate_id.dart';

class Todos extends Model{
    
Todos() {
    super.table('todos');
  }
  String generateId() {
    const characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    return Utils.generateId(5, characters);
  }
}