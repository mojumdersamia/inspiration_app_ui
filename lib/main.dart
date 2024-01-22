import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage  extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState ();
}

class _HomePageState  extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.blueGrey,
    appBar: AppBar(
      backgroundColor: Colors.white, systemOverlayStyle: SystemUiOverlayStyle.dark,
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu, color:Colors.black87),
      ),
    ),
    body: SafeArea(child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Find Your", style: TextStyle(color: Colors.black87, fontSize: 25),),
              const SizedBox(
                height: 2,
              ),
              const Text("Course", style: TextStyle(color:Colors.black, fontSize: 40,fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(244, 243, 243, 1),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.black87,),
                    hintText: "Search what you're looking for",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15)
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text("Promo today", style: TextStyle(color:Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard('assets/images/1657711469335.png'),
                        promoCard('assets/images/download.png'),
                        promoCard('assets/images/types-of-machine-learning.webp'),
                        promoCard('assets/images/unnamed.png'),
                        promoCard('assets/images/Artificial-Intelligence.jpeg'),
                      ],
                    ),
                  ),

                ],
              )
              ),
              const SizedBox(
               height: 20,
              ),
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/60bb4a2e143f632da3e56aea_Flutter app development (2).png')
                  ),
                ),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: const [.3,.9],
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.2)
                            ]
                        )
                    ),
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text('Top Course',style: TextStyle(color: Colors.white, fontSize: 20),),
                        )

                      ) ,
                ),
              )
            ],
          ),
        )
      ],
    ) ,
    ),
   );
  }
}


//promo card
Widget promoCard(image){
  return AspectRatio(aspectRatio: 2.62/3,
    child: Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color:Colors.orange,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)
        ),
      ),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: const [.1,.9],
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2)
                  ]
              )
          )
      ),

    ),
  );
}