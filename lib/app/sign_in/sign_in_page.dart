import 'package:flutter/material.dart';
import 'package:my_app/app/sign_in/sign_in_button.dart';
import 'package:my_app/app/sign_in/social_sign_in_button.dart';
import 'package:my_app/common_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Center(
         child: Text('Flutter Tutorial'),
       ),
        elevation: 2.0,
      ) ,
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 48.0),
          SocialSignInButton(
            assetName:'images/google-logo.png',
           text: 'Sign in with Google',
            textColor: Colors.black87,
            color: Colors.white,
          //  borderRadius: 4.0,
            onPressed: () {},
          ),
          const SizedBox(height: 8.0),
          SocialSignInButton(
            assetName:'images/facebook-logo.png',
              text: 'Sign in with Facebook',
              color: const Color(0xFF334D92),
              textColor:  Colors.white,
              onPressed: () {},
          ),
          const SizedBox(height: 8.0),
          SignInButton(text: 'Sign In with Email',
            color: Colors.teal,
            textColor:  Colors.white,
            onPressed: () {},
          ),
         const SizedBox(height: 8.0),
          const Text(
            'or',
            style: TextStyle(fontSize: 14.0,color:Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          SignInButton(text: 'Go Anonymous',
            color: Colors.lime,
            textColor:  Colors.black87,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
