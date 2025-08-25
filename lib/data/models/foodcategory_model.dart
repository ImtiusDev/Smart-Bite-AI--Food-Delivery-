import 'package:smart_bite_ai/core/constants/image_path.dart';

class FoodCategoryModel {
  final String imgPath;
  final String categoryName;

  FoodCategoryModel({required this.imgPath, required this.categoryName});

  static List<FoodCategoryModel> dummyFoodCategories = [
    FoodCategoryModel(
      imgPath: AppImagePath.categoryBurger,
      categoryName: 'Burger',
    ),
    FoodCategoryModel(imgPath: AppImagePath.categoryTaco, categoryName: 'Taco'),
    FoodCategoryModel(
      imgPath: AppImagePath.categoryDrink,
      categoryName: 'Drink',
    ),
    FoodCategoryModel(
      imgPath: AppImagePath.categoryPizza,
      categoryName: 'Pizza',
    ),
  ];
}
