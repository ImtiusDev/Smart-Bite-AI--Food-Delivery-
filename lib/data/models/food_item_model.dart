import 'package:smart_bite_ai/core/constants/image_path.dart';

class FoodItemModel {
  final String foodCategory;
  final String imgPath;
  final String foodName;
  final String locationDistance;
  final String price;
  final String rating;

  FoodItemModel({
    required this.foodCategory,
    required this.foodName,
    required this.locationDistance,
    required this.price,
    required this.imgPath,
    required this.rating,
  });

  static List<FoodItemModel> dummyFoodCategories = [
    FoodItemModel(
      imgPath: AppImagePath.ordinaryBurger1,
      foodCategory: 'burger',
      foodName: 'Ordinary Burger',
      locationDistance: '190m',
      rating: '4.9',
      price: '\$ 17,230',
    ),
    FoodItemModel(
      imgPath: AppImagePath.meatBurger,
      foodCategory: 'burger',
      foodName: 'Burger With Meat',
      locationDistance: '190m',
      rating: '5.0',
      price: '\$ 17,230',
    ),
    FoodItemModel(
      imgPath: AppImagePath.ordinaryBurger2,
      foodCategory: 'burger',
      foodName: 'Ordinary Burger',
      locationDistance: '190m',
      rating: '4.9',
      price: '\$ 17,230',
    ),
    FoodItemModel(
      imgPath: AppImagePath.ordinaryBurger3,
      foodCategory: 'burger',
      foodName: 'Ordinary Burger',
      locationDistance: '190m',
      rating: '4.8',
      price: '\$ 17,230',
    ),
    FoodItemModel(
      imgPath: AppImagePath.ordinaryBurger2,
      foodCategory: 'burger',
      foodName: 'Ordinary Burger',
      locationDistance: '190m',
      rating: '4.9',
      price: '\$ 17,230',
    ),
    FoodItemModel(
      imgPath: AppImagePath.meatBurger,
      foodCategory: 'burger',
      foodName: 'Burger With Meat',
      locationDistance: '190m',
      rating: '5.0',
      price: '\$ 17,230',
    ),
  ];
}
