import 'package:vania/vania.dart';
import 'package:tugas_pml__1_8_8/app/utils/generate_id.dart';
class Orders extends Model{
    
  Order() {
    super.table('orders');
  }
  String generateId() {
    const characters = '0123456789';
    return Utils.generateId(11, characters);
  }
}
