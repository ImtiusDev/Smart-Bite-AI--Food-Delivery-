import 'package:flutter/material.dart';
import 'package:smart_bite_ai/core/constants/colors.dart';
import 'package:smart_bite_ai/core/constants/image_path.dart';
import 'package:smart_bite_ai/core/constants/typography_style.dart';
import 'package:smart_bite_ai/core/utils/showblur_bottomsheet.dart';
import 'package:smart_bite_ai/core/widgets/button.dart';
import 'package:smart_bite_ai/core/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Login to your \naccount.',
                style: AppTextSyle.heading4SemiBold(AppColors.NeutralBlack100),
              ),
          
              const SizedBox(height: 8.0),
              Text(
                'Please sign in to your account',
                style: AppTextSyle.bodyMediumMedium(AppColors.TextNeutral60),
              ),
          
              const SizedBox(height: 8.0),
          
              // form field
          
              // field label
              Text(
                'Email Address',
                style: AppTextSyle.bodyMediumMedium(AppColors.TextNeutral100),
              ),
          
              const SizedBox(height: 8.0),
          
              TextFieldWithBorder(),
          
              const SizedBox(height: 14.0),
          
              Text(
                'Password',
                style: AppTextSyle.bodyMediumMedium(AppColors.TextNeutral100),
              ),
          
              const SizedBox(height: 8.0),
              PasswordTextField(),
              const SizedBox(height: 20.0),
          
              Align(
                alignment: AlignmentGeometry.directional(0.95, 0.0),
                child: TextButton(
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(EdgeInsets.all(0)),
                  ),
                  onPressed: () {
                    showForgotPasswordModal(context);
                    // showForgotPasswordModalGGG(context);
                  },
          
                  child: Text(
                    'Forget Password',
                    style: AppTextSyle.bodyMediumMedium(AppColors.primary),
                  ),
                ),
              ),
          
              const SizedBox(height: 24.0),
          
              buttonWithRadius('Sign In', mediaSize, (){} ),
          
              const SizedBox(height: 24.0),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1.6,
                        endIndent: 6.0,
                        color: AppColors.TextNeutral60,
                      ),
                    ),
                    Text(
                      'Or sign in with  ',
                      style: AppTextSyle.bodyMediumMedium(
                        AppColors.TextNeutral60,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.6,
                        color: AppColors.TextNeutral60,
                      ),
                    ),
                  ],
                ),
              ),
          
              const SizedBox(height: 24.0),
          
              // social media icon button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.NeutralWhite40, // বর্ডারের রঙ
                          width: 1.5,
                        ),
                      ),
                      padding: EdgeInsets.all(6), // ইমেজ ও বর্ডারের মাঝে জায়গা
                      child: Image.asset(AppImagePath.googleIcon),
                    ),
                  ),
          
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.NeutralWhite40,
                          width: 1.5,
                        ),
                      ),
                      padding: EdgeInsets.all(6),
                      child: Image.asset(AppImagePath.facebookIcon),
                    ),
                  ),
          
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.NeutralWhite40,
                          width: 1.5,
                        ),
                      ),
                      padding: EdgeInsets.all(6),
                      child: Image.asset(AppImagePath.appleIcon),
                    ),
                  ),
                ],
              ),
          
              const SizedBox(height: 24.0),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: AppTextSyle.bodyMediumMedium(
                      AppColors.NeutralBlack100,
                    ),
                  ),
          
                  TextButton(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.all(0)),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      'Register',
                      style: AppTextSyle.bodyMediumSemiBold(AppColors.primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
