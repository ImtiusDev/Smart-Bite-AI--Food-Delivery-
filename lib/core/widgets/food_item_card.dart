import 'package:flutter/material.dart';
import 'package:smart_bite_ai/core/constants/colors.dart';
import 'package:smart_bite_ai/core/constants/image_path.dart';
import 'package:smart_bite_ai/core/constants/typography_style.dart';
import 'package:smart_bite_ai/data/models/food_item_model.dart';

class FoodItemCard extends StatelessWidget {
  const FoodItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;
    int crossAxisCount = screenWidth < 250
        ? 1
        : screenWidth < 600
        ? 2
        : screenWidth < 1200
        ? 4
        : 6;
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      // itemCount: FoodItemModel.dummyFoodCategories.length,
      itemCount: FoodItemModel.dummyFoodCategories.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 220.0,
        // childAspectRatio: 0.5,
      ),
      itemBuilder: (context, index) {
        final foodItems = FoodItemModel.dummyFoodCategories;
        return Container(
          width: 155,
          // height: 250,
          decoration: BoxDecoration(
            color: AppColors.NeutralWhite10,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(8.0),
                        bottom: Radius.circular(8.0),
                      ),
                      child: SizedBox(
                        width: screenWidth * 0.5,
                        height: screenHeight * 0.142,
                        child: Image.asset(
                          AppImagePath.meatBurger,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8.0,
                      right: 8.0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 20,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Text(
                  foodItems[index].foodName,
                  style: AppTextSyle.bodyLargeMedium(AppColors.NeutralBlack100),
                ),
                const SizedBox(height: 4.0),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppImagePath.starIcon,
                            height: 16,
                            width: 16,
                          ),
                          Text(
                            foodItems[index].rating,
                            style: AppTextSyle.bodySmallMedium(
                              AppColors.NeutralBlack100,
                            ),
                          ),
                        ],
                      ),
            
                      Row(
                        children: [
                          Image.asset(
                            AppImagePath.locationIconYellow,
                            height: 16,
                            width: 16,
                          ),
                          Text(
                            foodItems[index].locationDistance,
                            style: AppTextSyle.bodySmallMedium(
                              AppColors.NeutralBlack100,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6.0),
                Text(
                  '\$ ${foodItems[index].price}',
                  style: AppTextSyle.bodyLargeBold(AppColors.primary),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}



