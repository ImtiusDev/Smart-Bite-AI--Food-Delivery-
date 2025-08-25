import 'package:flutter/material.dart';
import 'package:smart_bite_ai/core/constants/colors.dart';
import 'package:smart_bite_ai/core/constants/typography_style.dart';
import 'package:smart_bite_ai/core/widgets/button.dart';
import 'package:smart_bite_ai/core/widgets/textfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0,),
            Text('Forgot Password',
              style: AppTextSyle.heading4SemiBold(AppColors.NeutralBlack100),
            ),
            const SizedBox(height: 8.0,),
            Text('Enter your email address and we’ll send you confirmation code to reset your password',
              style: AppTextSyle.bodyMediumMedium(AppColors.NeutralGrey60),
            ),

            const SizedBox(height: 32.0,),
            // field label
              Text('Email Address',
                style: AppTextSyle.bodyMediumMedium(AppColors.TextNeutral100),
              ),
        
              const SizedBox(height: 8.0,),
        
              TextFieldWithBorder(),
        
              const SizedBox(height: 24.0,),
              buttonWithRadius('Continue', mediaSize,(){}),
              const SizedBox(height: 8.0,),
          ],
        ),
      ),
    );
  }
}