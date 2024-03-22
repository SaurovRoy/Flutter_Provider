import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_all_example/provider/countProvider.dart';
class count_example extends StatefulWidget {
  const count_example({super.key});
  @override
  State<count_example> createState() => _count_exampleState();
}

class _count_exampleState extends State<count_example> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider=Provider.of<count_provider>(context,listen: false);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      countProvider.setCount();

    });

  }
  @override
  Widget build(BuildContext context) {
    print('flutter build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter in Provider'),
      ),
      body: Center(
        child:Consumer<count_provider>(builder: (context,value,child){
          return Text(value.count.toString(),style: TextStyle(fontSize: 20),);
        }),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
