import 'package:flutter/cupertino.dart';
import 'package:my_app/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton{
  SignInButton({Key? key,
    required String text,
    required Color color,
    required Color textColor,
   // required double boarderRadius,
    required VoidCallback onPressed,
}):  assert(text!= null),
        super(key: key,
    child: Text(
        text,style:TextStyle(color: textColor,fontSize: 15.0)
    ),
    color:color,
   // height: 40.0,
    onPressed: onPressed,
  );

}