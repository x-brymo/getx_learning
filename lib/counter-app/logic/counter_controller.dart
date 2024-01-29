import 'package:get/get.dart';

class CounterControllerGetBuilder extends GetxController {
  int counter = 0;
    void increment() { 
      counter++;
      update();
      }
    void decrement() { 
      counter-- ;
      update();
    }
    
}
class CounterControllerGetX extends GetxController {
  RxInt counter = 0.obs;
    void increment() => counter++;
    void decrement() => counter--;

}
class CounterControllerObx extends GetxController {
  RxInt counter = 0.obs;
    void increment() => counter++;
    void decrement() => counter--;

}