import 'package:flutter/material.dart';
import 'package:smart_bite_ai/core/constants/typography_style.dart';
import 'package:smart_bite_ai/core/constants/image_path.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  OnboardingPageState createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (int pageIndex) {
          setState(() => pageIndex = pageIndex);
        },
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          
          return _onboardingScreen(
            pageIndex: index,
            bgImgPath: AppImagePath.onBoardingImage1, 
            onBoardTitle: onBoardingTitle[index], 
            onBoarDescription: onBoardingDescription[index],
            
          );
        },
      ),
    );
  }





  Widget _onboardingScreen({required int pageIndex,required String bgImgPath,required String onBoardTitle,required String onBoarDescription}) {
    Size media = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(bgImgPath,
          fit: BoxFit.cover,  
         ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 60),
            height: 421,
            width: media.width * 0.75,
            decoration: BoxDecoration(
              color: Colors.amber[800],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    spacing: 16,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        onBoardTitle,
                        textAlign: TextAlign.center,
                        style: AppTextSyle.heading4SemiBold(Colors.white),
                      ),
                  
                      Text(
                        onBoarDescription,
                        textAlign: TextAlign.center,
                        style: AppTextSyle.bodyMediumRegular(Colors.white),
                      ),
                  
                      // 3 dots
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 6,
                        children: [
                          Container(
                            height: 8,
                            width: 22,
                            decoration: BoxDecoration(
                              color: pageIndex==0? Colors.black : Colors.white,
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                  
                          Container(
                            height: 8,
                            width: 22,
                            decoration: BoxDecoration(
                              color: pageIndex==1? Colors.black : Colors.white,
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                  
                          Container(
                            height: 8,
                            width: 22,
                            decoration: BoxDecoration(
                              color: pageIndex==2? Colors.black : Colors.white,
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                    if(pageIndex == 2)
                      IconButton(
                        onPressed: (){

                          Navigator.of(context).pushNamed('/login');
                        }, 
                        icon: SizedBox(
                          height: 85,
                          width: 85,
                          // child: Image.asset(AppImagePath.onBoardingProgressButton),
                          child: Image(
                            image: AssetImage(AppImagePath.onBoardingProgressButton
                            ),
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                  
                  
                  if(pageIndex !=2)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      TextButton(
                        onPressed: () {
                          // Optional: skip logic
                          if(pageIndex > 0){
                              _pageController.animateToPage(
                              0,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          }
                        },
                        child: Text('Skip', 
                          style: AppTextSyle.bodyMediumSemiBold(Colors.white),
                        ),
                      ),

                      TextButton.icon(
                        iconAlignment: IconAlignment.end,
                        style: TextButton.styleFrom(
                          // minimumSize: Size.zero,
                        ),
                        onPressed: () {
                          if (pageIndex < 2) {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );

                          } else {
                            // Final page: maybe navigate to Home
                            Navigator.pushReplacementNamed(context, '/');
                          }
                        },
                        icon: Icon(Icons.arrow_forward, size: 18, color: Colors.white),
                        label: Text('Next', 
                          style: AppTextSyle.bodyMediumSemiBold(Colors.white),
                        ),
                      ),
                    ],
                  ),
                
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}




// dummy data for onboarding screen

List<String> onBoardingTitle = [
  // 'Hungry? Your Favorite Restaurants Are Ready!',
  'We serve incomparable delicacies',
  'Fresh, Fast & Trackable',
  'Secure Payments & Rewards'
];
List<String> onBoardingDescription = [
  // 'Discover your favorite dishes from top local restaurants, all in one place. Whether you\'re craving comfort food or something new, it\'s just a tap away',
  'All the best restaurants with their top menu waiting for you, they can’t wait for your order!!',
  'From hot meals to cold desserts, get everything delivered fresh. Track your order live and enjoy every bite.',
  'Pay securely your way and earn rewards with every order. Delicious food, flexible payment, and great experiences await you.'
];