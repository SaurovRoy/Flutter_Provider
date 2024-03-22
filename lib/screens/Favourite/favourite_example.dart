import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_all_example/provider/favourite_provider.dart';
import 'package:provider_all_example/screens/Favourite/second_favouriteList.dart';

import '../../provider/favourite_provider.dart';
class Favourite_Example extends StatefulWidget {
  const Favourite_Example({super.key});

  @override
  State<Favourite_Example> createState() => _Favourite_ExampleState();
}

class _Favourite_ExampleState extends State<Favourite_Example> {

  @override
  Widget build(BuildContext context) {
    print('build');
    //final favouriteItem=Provider.of<FavouriteProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Example'),
        centerTitle: true,
        elevation: 0,
        actions: [
          InkWell(onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteScareen())),
              child: Icon(Icons.favorite))
        ],
      ),
      body:Expanded(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context,index){
              return Card(
                child: Consumer<FavouriteProvider>(builder: (context,value,child){
                  return ListTile(
                    onTap: (){
                      if(value.selectedItem.contains(index)){
                       value.removeValue(index);

                      }else{
                        value.addValue(index);
                      }
                    },
                    title: Text('Item number : $index'),
                    trailing:value.selectedItem.contains(index)?const Icon(Icons.favorite): const Icon(Icons.favorite_border_outlined),
                  );
                },

                ),
              );
            }),
      ) ,
    );
  }
}
