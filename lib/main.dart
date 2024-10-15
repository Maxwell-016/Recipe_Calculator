import 'package:flutter/material.dart';
import 'package:yummy/data_structures/recipe.dart';
import 'package:yummy/data_structures/recipe_detail.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme =ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            //TODO: Replace return with return RecipeDetail()
                            return RecipeDetail(recipe: Recipe.samples[index]);
                          })
                  );
                },
                child: buildRecipeCard(Recipe.samples[index]),
              );

              }),
      ),
    );
  }
  Widget buildRecipeCard(Recipe recipe){
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image:AssetImage(recipe.imageUrl,)),
            const SizedBox(height: 14.0,),
            Text(recipe.label,style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino'
            ),)
          ],
        ),
      ),
    );
    }
  }




