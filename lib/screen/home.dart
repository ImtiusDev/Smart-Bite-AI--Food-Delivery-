// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import 'package:smart_bite_ai/core/constants/colors.dart';
// import 'package:smart_bite_ai/core/constants/image_path.dart';
// import 'package:smart_bite_ai/core/constants/typography_style.dart';
// import 'package:smart_bite_ai/core/widgets/food_item_card.dart';
// import 'package:smart_bite_ai/data/models/foodcategory_model.dart';
// import 'package:smart_bite_ai/screen/cart_screen.dart';
// import 'package:smart_bite_ai/screen/chat_screen.dart';
// import 'package:smart_bite_ai/screen/profile_account.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<StatefulWidget> createState() => HomeScreenState();
// }

// class HomeScreenState extends State<HomeScreen> {
//   int selectedPage = 0;
//   final List<Widget> _pages = [
//     HomePage(),
//     CartScreen(),
//     ChatScreen(),
//     ProfileAccountScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     Size mediaSize = MediaQuery.sizeOf(context);
//     return Scaffold(
//       body: _pages[selectedPage],
//       bottomNavigationBar: Container(
//         height: 80,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withAlpha(70), // subtle black shadow
//               blurRadius: 30,
//               spreadRadius: 2,
//               offset: Offset(0, -6), // upward shadow
//             ),
//           ]
//         ),
//         child: BottomNavigationBar(
//           currentIndex: selectedPage,
//           type: BottomNavigationBarType.fixed,
//           showSelectedLabels: true,
//           showUnselectedLabels: false,
        
//           selectedLabelStyle: AppTextSyle.bodyLargeBold(AppColors.primary),
//           unselectedLabelStyle: AppTextSyle.bodySmallSemiBold(AppColors.NeutralGrey60),
        
//           backgroundColor: Colors.white,
//           onTap: (pageIndex) {
//             setState(() {
//               selectedPage = pageIndex;
//             });
//           },
        
//           items: [
//             BottomNavigationBarItem(
//               label: 'Home',
//               icon: SvgPicture.asset(AppImagePath.iconHomeSvg,
//                 colorFilter: ColorFilter.mode(selectedPage == 0
//                     ? AppColors.primary
//                     : AppColors.NeutralWhite50,
//                     BlendMode.srcIn,
//                 ),
//               ),
//             ),
        
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 AppImagePath.iconBagSvg,
//                 colorFilter: ColorFilter.mode(
//                   selectedPage == 1
//                       ? AppColors.primary
//                       : AppColors.NeutralWhite50,
//                   BlendMode.srcIn,
//                 ),
//               ),
//               label: 'Cart',
//             ),
        
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 AppImagePath.iconMessageSvg,
//                 colorFilter: ColorFilter.mode(
//                   selectedPage == 2
//                       ? AppColors.primary
//                       : AppColors.NeutralWhite50,
//                   BlendMode.srcIn,
//                 ),
//               ),
//               label: 'Chat',
//             ),
        
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 AppImagePath.iconProfileSvg,
//                 colorFilter: ColorFilter.mode(
//                   selectedPage == 3
//                       ? AppColors.primary
//                       : AppColors.NeutralWhite50,
//                   BlendMode.srcIn,
//                 ),
//               ),
        
//               label: 'Profile',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// //Home page

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size mediaSize = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               SizedBox(
//                 height: mediaSize.height * 0.29,
//                 width: double.infinity,
//                 child: Image.asset(
//                   'assets/home_img/headBg.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),

//               Positioned(
//                 top: 40,
//                 left: 24,
//                 right: 24,

//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Text(
//                                   'Your location',
//                                   style: AppTextSyle.bodyMediumRegular(
//                                     AppColors.NeutralWhite10,
//                                   ),
//                                 ),
//                                 const SizedBox(width: 6.0),
//                                 Image.asset(AppImagePath.downArrow),
//                               ],
//                             ),

//                             const SizedBox(height: 10.0),
//                             Row(
//                               children: [
//                                 Image.asset(AppImagePath.locationIcon),
//                                 const SizedBox(width: 8.0),
//                                 Text(
//                                   'New York City',
//                                   style: AppTextSyle.bodyMediumSemiBold(
//                                     AppColors.NeutralWhite10,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),

//                         Row(
//                           children: [
//                             Container(
//                               height: 40,
//                               width: 40,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: Colors.white,
//                                   style: BorderStyle.solid,
//                                 ),
//                                 borderRadius: BorderRadius.circular(50),
//                               ),
//                               child: Image(
//                                 image: AssetImage(AppImagePath.searchIcon),
//                                 height: 24,
//                                 width: 24,
//                               ),
//                             ),
//                             const SizedBox(width: 16.0),
//                             Container(
//                               height: 40,
//                               width: 40,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: Colors.white,
//                                   style: BorderStyle.solid,
//                                 ),
//                                 borderRadius: BorderRadius.circular(50),
//                               ),
//                               child: Image(
//                                 image: AssetImage(
//                                   AppImagePath.notificationIcon,
//                                 ),
//                                 height: 24,
//                                 width: 24,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 24.0),
//                     Text(
//                       'Provide the best \nfood for you',
//                       style: AppTextSyle.heading4SemiBold(
//                         AppColors.NeutralWhite10,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),

//           Padding(
//             padding: const EdgeInsets.only(left: 24, right: 24),
//             child: Column(
//               children: [
//                 const SizedBox(height: 24.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Find by Category',
//                       style: AppTextSyle.bodyLargeSemiBold(
//                         AppColors.TextNeutral100,
//                       ),
//                     ),
//                     Text(
//                       'See All',
//                       style: AppTextSyle.bodyMediumMedium(AppColors.primary),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16.0),

//                 SizedBox(
//                   width: mediaSize.width,
//                   height: 65,
//                   child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: FoodCategoryModel.dummyFoodCategories.length,
//                     itemBuilder: (context, index) {
//                       final category = FoodCategoryModel.dummyFoodCategories;
//                       return Padding(
//                         padding: const EdgeInsets.only(right: 30.0),
//                         child: Container(
//                           padding: EdgeInsets.only(
//                             top: 8.0,
//                             left: 7.0,
//                             right: 7.0,
//                             bottom: 8,
//                           ),
//                           height: 65,
//                           width: 60,
//                           decoration: BoxDecoration(
//                             color: index == 0
//                                 ? AppColors.primary
//                                 : AppColors.NeutralWhite10,
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           child: Column(
//                             children: [
//                               Image.asset(
//                                 category[index].imgPath,
//                                 height: 24,
//                                 width: 24,
//                               ),
//                               const SizedBox(height: 3),
//                               Text(
//                                 category[index].categoryName,
//                                 style: AppTextSyle.bodyMediumMedium(
//                                   index == 0
//                                       ? AppColors.NeutralWhite10
//                                       : AppColors.NeutralGrey60,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),

//                 const SizedBox(height: 16.0),
//                 FoodItemCard(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }








import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:smart_bite_ai/core/constants/colors.dart';
import 'package:smart_bite_ai/core/constants/image_path.dart';
import 'package:smart_bite_ai/core/constants/typography_style.dart';
import 'package:smart_bite_ai/core/widgets/food_item_card.dart';
import 'package:smart_bite_ai/data/models/foodcategory_model.dart';
import 'package:smart_bite_ai/screen/cart_screen.dart';
import 'package:smart_bite_ai/screen/chat_screen.dart';
import 'package:smart_bite_ai/screen/profile_account.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;
  final List<Widget> _pages = [
    HomePage(),
    CartScreen(),
    ChatScreen(),
    ProfileAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedPage,
        children: _pages,
      ),





      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(70), // subtle black shadow
              blurRadius: 30,
              spreadRadius: 2,
              offset: Offset(0, -6), // upward shadow
            ),
          ]
        ),
        child: BottomNavigationBar(
          currentIndex: selectedPage,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.primary,
          selectedLabelStyle: AppTextSyle.bodyMediumSemiBold(AppColors.primary),
        
          backgroundColor: Colors.white,
          onTap: (pageIndex) {
            setState(() {
              selectedPage = pageIndex;
            });
          },
        
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: SvgPicture.asset(AppImagePath.iconHomeSvg,
                colorFilter: ColorFilter.mode(selectedPage == 0
                    ? AppColors.primary
                    : AppColors.NeutralWhite50,
                    BlendMode.srcIn,
                ),
              ),
            ),
        
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImagePath.iconBagSvg,
                colorFilter: ColorFilter.mode(
                  selectedPage == 1
                      ? AppColors.primary
                      : AppColors.NeutralWhite50,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Cart',
            ),
        
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImagePath.iconMessageSvg,
                colorFilter: ColorFilter.mode(
                  selectedPage == 2
                      ? AppColors.primary
                      : AppColors.NeutralWhite50,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Chat',
            ),
        
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImagePath.iconProfileSvg,
                colorFilter: ColorFilter.mode(
                  selectedPage == 3
                      ? AppColors.primary
                      : AppColors.NeutralWhite50,
                  BlendMode.srcIn,
                ),
              ),
        
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

//Home page

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: mediaSize.height * 0.29,
                width: double.infinity,
                child: Image.asset(
                  'assets/home_img/headBg.png',
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 40,
                left: 24,
                right: 24,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Your location',
                                  style: AppTextSyle.bodyMediumRegular(
                                    AppColors.NeutralWhite10,
                                  ),
                                ),
                                const SizedBox(width: 6.0),
                                Image.asset(AppImagePath.downArrow),
                              ],
                            ),

                            const SizedBox(height: 10.0),
                            Row(
                              children: [
                                Image.asset(AppImagePath.locationIcon),
                                const SizedBox(width: 8.0),
                                Text(
                                  'New York City',
                                  style: AppTextSyle.bodyMediumSemiBold(
                                    AppColors.NeutralWhite10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image(
                                image: AssetImage(AppImagePath.searchIcon),
                                height: 24,
                                width: 24,
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image(
                                image: AssetImage(
                                  AppImagePath.notificationIcon,
                                ),
                                height: 24,
                                width: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 24.0),
                    Text(
                      'Provide the best \nfood for you',
                      style: AppTextSyle.heading4SemiBold(
                        AppColors.NeutralWhite10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Find by Category',
                      style: AppTextSyle.bodyLargeSemiBold(
                        AppColors.TextNeutral100,
                      ),
                    ),
                    Text(
                      'See All',
                      style: AppTextSyle.bodyMediumMedium(AppColors.primary),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),

                SizedBox(
                  width: mediaSize.width,
                  height: 65,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: FoodCategoryModel.dummyFoodCategories.length,
                    itemBuilder: (context, index) {
                      final category = FoodCategoryModel.dummyFoodCategories;
                      return Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 8.0,
                            left: 7.0,
                            right: 7.0,
                            bottom: 8,
                          ),
                          height: 65,
                          width: 60,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? AppColors.primary
                                : AppColors.NeutralWhite10,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                category[index].imgPath,
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(height: 3),
                              Text(
                                category[index].categoryName,
                                style: AppTextSyle.bodyMediumMedium(
                                  index == 0
                                      ? AppColors.NeutralWhite10
                                      : AppColors.NeutralGrey60,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 16.0),
                FoodItemCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
