import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:smart_bite_ai/core/constants/colors.dart';
import 'package:smart_bite_ai/core/constants/typography_style.dart';
import 'package:smart_bite_ai/core/widgets/button.dart';

void showForgotPasswordModal(BuildContext context) {
  showMaterialModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      ),
    ),
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: ForgotPasswordBottomSheet(),
    ),
  );
}

class ForgotPasswordBottomSheet extends StatefulWidget {
  const ForgotPasswordBottomSheet({super.key});

  @override
  State<ForgotPasswordBottomSheet> createState() =>
      _ForgotPasswordBottomSheetState();
}

class _ForgotPasswordBottomSheetState extends State<ForgotPasswordBottomSheet> {
  String? selectedOption;
  int selectedIndex = 0;
  final options = [
    {
      "icon": Icons.chat,
      "title": "Send via WhatsApp",
      "subTitle": "+12 8347 2838 28",
    },
    {
      "icon": Icons.email,
      "title": "Send via Email",
      "subTitle": "Albertstevano@gmail.com",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 15),
              Center(
                child: Container(
                  height: 4,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Forgot password?",
                style: AppTextSyle.heading5SemiBold(AppColors.TextNeutral100),
              ),
              const SizedBox(height: 10),
              Text(
                "Select which contact details should we use to reset your password",
                style: AppTextSyle.bodyMediumMedium(AppColors.TextNeutral60),
              ),

              const SizedBox(height: 20),

              // এখানে লিস্টের আগে ... দিয়ে একটা widget এ কনভার্ট করা হয়েছে।
              ...List.generate(options.length, (index) {
                final isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isSelected
                            ? Colors.orange
                            : Colors.grey.shade300,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      leading: Icon(options[index]["icon"] as IconData),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            options[index]["title"] as String,
                            style: AppTextSyle.bodySmallRegular(
                              AppColors.TextNeutral60,
                            ),
                          ),
                          Text(
                            "${options[index]['subTitle']}",
                            style: AppTextSyle.bodyMediumMedium(
                              AppColors.TextNeutral100,
                            ),
                          ),
                        ],
                      ),
                      horizontalTitleGap: 25.0,
                      trailing: isSelected
                          ? const Icon(Icons.check_circle, color: Colors.orange)
                          : const Icon(
                              Icons.radio_button_unchecked,
                              color: Colors.grey,
                            ),
                    ),
                  ),
                );
              }),

              const SizedBox(height: 20),
              buttonWithRadius(
                'Continue', 
                MediaQuery.of(context).size,
                (){
                  Navigator.pushNamed(context, '/verification');
                }
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
