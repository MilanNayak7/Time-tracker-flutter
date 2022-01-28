import 'package:flutter/cupertino.dart';
import 'package:my_app/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton{
  SocialSignInButton({Key? key,
    required String text,
    required Color color,
    required Color textColor,
    // required double boarderRadius,
    required VoidCallback onPressed,

    required assetName,
  }): super(key: key,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(assetName),
        Text(
          text,
          style: TextStyle(color: textColor,fontSize: 15.0),
        ),
        Opacity(
            opacity: 0.0,
            child: Image.asset(assetName)),
      ],
    ),
    color:color,
    // height: 40.0,
    onPressed: onPressed,
  );

}