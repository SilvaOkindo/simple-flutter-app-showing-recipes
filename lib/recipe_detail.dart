import 'package:flutter/material.dart';
import 'package:flutter_demo/recipe.dart';

class RecipeDetails extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}
// TODO: Add _RecipeDetailState here

class _RecipeDetailsState extends State<RecipeDetails> {
  // TODO: Add _sliderVal here

  int _slideValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            const SizedBox(height: 4,),
            Text(
                widget.recipe.label,
                style: const TextStyle(fontSize: 18),
            ),
            // TODO: Add Expanded,
            Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                    itemCount: widget.recipe.ingredient.length,
                    itemBuilder: (_, index) {
                      final ingredients = widget.recipe.ingredient[index];

                      return Text(
                        "${ingredients.quantity * _slideValue}, ${ingredients.measure}, ${ingredients.name}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      );
                    })
            ),
            // TODO: Add Slider() here
            Slider(
                min: 1,
                max: 10,
                divisions: 9,
                value: _slideValue.toDouble(),
                label: "${_slideValue * widget.recipe.servings} servings",
                onChanged: (newValue) {
                  setState(() {
                    _slideValue = newValue.round();
                  });
                },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
