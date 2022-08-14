import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
                height: 200,
                child: Image.asset(
                  'assets/images/4.jpg',
                  fit: BoxFit.contain,
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Dresses',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Spacer(),
                Text('30\$'),
                SizedBox(width: 20,)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(width: 20,height: 50,child: Image.asset('assets/images/6.png',width: 30,height: 40,alignment: Alignment.topLeft,)),
            SizedBox(
              height: 15,
            ),
            Text(
              ''' when an unknown printer took a galley of type and scrambled it to make a type specimen book.
               It has survived not only five centuries
              , but also the leap into electronic typesetting, remaining essentially unchanged. I''',
            ),
            SizedBox(
              height: 10,
            ),
            Text('Choose the SizeL'),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text('S'),
                ),SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text('M'),
                ),SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text('L'),
                ),SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text('XL'),
                ),
              ],
            ),
            Spacer(),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                ElevatedButton(onPressed: () {}, child: Text('Add to Cart')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
