import 'package:flutter/material.dart';
import 'package:smart_bite_ai/core/constants/colors.dart';
import 'package:smart_bite_ai/core/constants/image_path.dart';
import 'package:smart_bite_ai/core/constants/typography_style.dart';

class ResponsiveForGrid extends StatelessWidget {
  const ResponsiveForGrid({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    int crossAxisCount = screenWidth < 600
        ? 2
        : screenWidth < 1200
        ? 4
        : 6;

    return Padding(
      padding: EdgeInsetsGeometry.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 210.0,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            width: 155,
            // height: 240,
            decoration: BoxDecoration(
              color: Colors.white,
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
                        child: Image.asset(
                          AppImagePath.meatBurger,
                          fit: BoxFit.fitWidth,
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
                    'Ordinary Burger',
                    style: AppTextSyle.bodyLargeMedium(
                      AppColors.NeutralBlack100,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      width: 145,
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
                                '4.9',
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
                                '190m',
                                style: AppTextSyle.bodySmallMedium(
                                  AppColors.NeutralBlack100,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    '\$ 17,230',
                    style: AppTextSyle.bodyLargeBold(AppColors.primary),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
