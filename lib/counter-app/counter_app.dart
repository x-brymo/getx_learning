import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic/counter_controller.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Getx Counter App")),
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            const Center(
              child: Expanded(
                child: CounterAppGetBuilder(),
              ),
            ),
            Center(
              child: Expanded(
                child: CounterAppObx(),
              ),
            ),
            Center(
              child: Expanded(
                child: CounterAppGetX(),
              ),
            ),
          ]),
    );
  }
}

class CounterAppGetBuilder extends StatelessWidget {
  const CounterAppGetBuilder({super.key});
  //final CounterController counters = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<CounterControllerGetBuilder>(
          init: CounterControllerGetBuilder(),
          builder: (controller) {
            print("build counter app getbuilder test : 1");
            return Row(
              children: [
                IconButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    icon: const Icon(Icons.remove)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(3, 0),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Center(
                      child: Text(
                    "${controller.counter}",
                    style: const TextStyle(fontSize: 50),
                  )),
                ),
                IconButton(
                    onPressed: () {
                      controller.increment();
                    },
                    icon: const Icon(Icons.add)),
              ],
            );
          }),
    );
  }
}

class CounterAppObx extends StatelessWidget {
  CounterAppObx({super.key});
  final CounterControllerObx counters = Get.put(CounterControllerObx());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      print("build counter app obx test : 2");
      return Row(
        children: [
          IconButton(
              onPressed: () => counters.decrement(),
              icon: const Icon(Icons.remove)),
          Container(
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(3, 0),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Center(
                child: Text(
              "${counters.counter.value}",
              style: const TextStyle(fontSize: 50),
            )),
          ),
          IconButton(
              onPressed: () => counters.increment(),
              icon: const Icon(Icons.add)),
        ],
      );
    });
  }
}

class CounterAppGetX extends StatelessWidget {
  CounterAppGetX({super.key});
  final CounterControllerGetX counters = Get.put(CounterControllerGetX());
  @override
  Widget build(BuildContext context) {
    return GetX<CounterControllerGetX>(builder: (controller) {
      print("build counter app getx test : 3");
      return Row(
        children: [
          IconButton(
              onPressed: () => counters.decrement(),
              icon: const Icon(Icons.remove)),
          Container(
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(3, 0),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Center(
                child: Text(
              "${counters.counter.value}",
              style: const TextStyle(fontSize: 50),
            )),
          ),
          IconButton(
              onPressed: () => counters.increment(),
              icon: const Icon(Icons.add)),
        ],
      );
    });
  }
}
