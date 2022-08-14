import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40,width: 40,child: Icon(Icons.warning,size: 40,),),
            SizedBox(height: 20,),
            Text('Nothing here yet,Want to shop?'),
            SizedBox(width:190,child: ElevatedButton(onPressed: (){}, child: Text('Shop Now')))
          ],
        ),
      ),
    );
  }
}
