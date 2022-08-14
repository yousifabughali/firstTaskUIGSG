import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_task_ui/views/widgets/listview_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: 'Search',
                  contentPadding: EdgeInsets.only(top: 15),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 100,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  autoPlay: true,
                ),
                items: [
                  'assets/images/1.jpg',
                  'assets/images/2.jpg',
                  'assets/images/3.jpg'
                ]
                    .map(
                      (e) =>
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(e),
                      ),
                )
                    .toList(),
              ),
            ),
            SizedBox(height: 10,),
            Text('New Arrival', style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18),),
            SizedBox(height: 5,),
            SizedBox(
              height: 180,
              child: ListView.builder(
                shrinkWrap: true,
                // physics:NeverScrollableScrollPhysics(),

                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListViewCard(imageCount: index+1);
                },),
            ),
            SizedBox(height: 10,),
            Text('Recommended', style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18),),
            SizedBox(height: 10,),
            GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,

            ),
              itemBuilder: (context, index) {
              return ListViewCard(imageCount: index+1);
            },
            itemCount: 5,),
          ],
        ),
      ),
    );
  }
}
