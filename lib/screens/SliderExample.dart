import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_all_example/provider/SliderProvider.dart';
class Slider_Example extends StatefulWidget {
  const Slider_Example({super.key});

  @override
  State<Slider_Example> createState() => _Slider_ExampleState();
}

class _Slider_ExampleState extends State<Slider_Example> {

  @override
  Widget build(BuildContext context) {

    print('Flutter build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example of Provider'),
      ),
      body: Center(
        child: Consumer<Slider_Provider>(builder: (context,value,child){
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                  min: 0,
                  max: 1,
                  value: value.opacity,
                  onChanged: (val){

                    value.setValue(val);
                  }),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color:Colors.black.withOpacity(value.opacity),
                      child: const Center(child:Text('Container 1')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.blue.withOpacity(value.opacity),
                      child: const Center(child:Text('Container 2')),
                    ),
                  ),
                ],
              )
            ],
          );
        })

      ),
    );
  }
}
