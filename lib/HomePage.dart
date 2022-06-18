import 'package:flutter/material.dart';
import 'models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  
  Widget build(BuildContext context) {
    List <Food> food = [
      Food(name: 'Pasta', image: 'assets/images/pasta.jpg'),
      Food(name: 'Burger', image: 'assets/images/burger.jpg'),
      Food(name: 'Suchi', image: 'assets/images/suchi.jpg'),
      Food(name: 'Pizza', image: 'assets/images/pizza.jpg'),
      Food(name: 'Biryani', image: 'assets/images/biryani.jpg'),
    ];
    int state = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu", textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.red,

      ),
      body: state == 0 ? ListView.builder(itemCount: food.length,
          itemBuilder: (context, index) {
        return Container(
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(food[index].name, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(food[index].image,
                    height: 150,
                    width: 150,),
                )
              ],
            ),
          ),
        );
          }
      ) :
      Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 1,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4),
            itemCount: food.length,

            itemBuilder: (BuildContext ctx, index) {


                  return Column(

                    children: [ Text(food[index].name, style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                        ),),


                        Image.asset(food[index].image, height: 150, width: 100,),

                    ],


              );
            }),
      ),

    );
  }
}
