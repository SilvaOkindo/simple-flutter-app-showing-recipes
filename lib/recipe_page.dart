import 'package:flutter/material.dart';
import 'package:flutter_demo/recipe.dart';
import 'package:flutter_demo/recipe_detail.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe Calculator"),
      ),
      body: SafeArea(
          child: ListView.builder(
            itemCount: Recipe.samples.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return RecipeDetails(recipe: Recipe.samples[index]);
                    }
                    )
                  )
                  },
                    child: buildCustomCard(Recipe.samples[index])
                );
              }
          )
      ),
    );
  }
  Widget buildCustomCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image(image: AssetImage(recipe.imageUrl),),
            const SizedBox(height: 14,),
            Text(recipe.label, style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontFamily: "Palatino"
            ))
          ],
        ),
      ),
    );
  }
}
