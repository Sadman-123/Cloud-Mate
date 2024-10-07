import 'package:flutter/cupertino.dart';
class SearchBar extends StatelessWidget{
  final double mdw,mdh;
  const SearchBar({super.key, required this.mdw, required this.mdh});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: mdw*0.8,
      margin: EdgeInsets.only(
        top: 25
      ),
      child: CupertinoTextField(
        placeholder: "Enter City",
        placeholderStyle: TextStyle(
          color: CupertinoColors.secondaryLabel
        ),
        prefix: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(CupertinoIcons.search),
        ),
        padding: EdgeInsets.all(18),
      ),
    );
  }
}