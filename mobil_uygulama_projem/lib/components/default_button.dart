import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
     required this.text, 
     required this.press,
  }) : super(key: key);
  final String text;
  final dynamic Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: orantiliEkranYuksekligi(56),

child:ElevatedButton(
  child: Text("İleri"),
  onPressed: press,
  style: ElevatedButton.styleFrom(
    primary: kPrimaryColor,
    onPrimary: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32.0),
    ),
  ),
)


   /* child: TextButton(
              onPressed: press,

              child: Container(
                    color:kPrimaryColor,
              child: Text(
                "İleri",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
        ),
    ),*/
    );
  }
}