import 'package:first_task_ui/views/item_Screen.dart';
import 'package:flutter/material.dart';

class ListViewCard extends StatefulWidget {
  late int imageCount;

  ListViewCard({required this.imageCount, Key? key}) : super(key: key);

  @override
  State<ListViewCard> createState() => _ListViewCardState();
}

class _ListViewCardState extends State<ListViewCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return ItemScreen();
        }) );
      },
      child: Row(
        children: [
          Container(
            height: 165,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 6), // changes position of shadow
                ),
              ],
            ),

            child: Center(
              child: Column(
                children: [

                  SizedBox(
                      height: 90,
                      width: double.infinity,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                            'assets/images/${widget.imageCount.toString()}.jpg',fit: BoxFit.cover),
                      ),),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Suits',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        '30\$',
                        style: TextStyle(
                            color: Colors.brown, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('Add to cart')),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite))

                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
