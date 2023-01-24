import 'package:flutter/material.dart';

class searchlist extends SearchDelegate{
  late VoidCallback? onPressed;
  List<String> searchTearms = [
    'pizza',
    'burger',
    'sandwich',
    'momos',
    'panipuri',
    'cold drinks',
    'margherita pizza',
    'cheese pizza',
    'pepperoni pizza',
    'classic pizza',
    'new york style pizza',
    'aloo tikki',
    'ham burger',
    'double cheese burger',
    'salmon burger',
    'spice paneer burger',
    'cheese sandwich',
    'grill sandwich',
    'chiken tikka',
    'mayonnise sandwich',
    'paneer sandwich',
    'tandoori momos',
    'special veg. momos'
        'chocolate momos',
    'chiken momos',
    'cheese momos',
    'cheese panipuri',
    'chocolate panipuri',
    'pudina panipuri',
    'daahi paneer panipuri',
    'sp. dahi chat',
    'coca cola',
    'fanta',
    'thumps up',
    'pepsi',
    'sprite'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(onPressed: (){query = '';}, icon: const Icon(Icons.clear),),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){close(context,null);}, icon: const Icon(Icons.arrow_back),);
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTearms){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(itemBuilder: (context, index){
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );
    },itemCount: matchQuery.length,);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTearms){
      if (fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(itemCount: matchQuery.length,itemBuilder: (context, index){
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );
    }
    );
  }

}