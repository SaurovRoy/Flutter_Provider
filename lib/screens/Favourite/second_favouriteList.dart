import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_all_example/provider/favourite_provider.dart';

class FavouriteScareen extends StatefulWidget {
  const FavouriteScareen({super.key});

  @override
  State<FavouriteScareen> createState() => _FavouriteScareenState();
}

class _FavouriteScareenState extends State<FavouriteScareen> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<FavouriteProvider>(context);

    print(provider.selectedItem.length);
    return Scaffold(
      appBar: AppBar(
        title:  Text('Selected Fav list : '+provider.selectedItem.length.toString()),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount:provider.selectedItem.length,
                itemBuilder: (context,index){
               return ListTile(

                  title: Text('Selected Item is :'+provider.selectedItem[index].toString()),
                  trailing: const Icon(Icons.favorite),
                );
            }),
          ),
        ],
      ),
    );
  }
}
