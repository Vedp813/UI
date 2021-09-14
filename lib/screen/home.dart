import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final images = ["images/ima.jpg", "images/im.jpg"];
  int activeIndex =0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Image.asset(
                                'images/profile.jpg',
                              )),
                          Positioned(
                              right: 0, child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blue),),
                              child: Icon(Icons.edit, size: 15,)))
                        ],
                      ),
                      Text("Hi, Ved Patel", style: TextStyle(color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),),
                      SizedBox(width: 20),
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Icon(CupertinoIcons.money_dollar_circle_fill,
                            color: Colors.blue, size: 30,),
                          Positioned(right: 0,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 12,
                                minHeight: 12,
                              ),
                              child: new Text(
                                '100',
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Icon(CupertinoIcons.bell_fill, color: Colors.blue,
                            size: 30,),
                          Positioned(right: 0,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 12,
                                minHeight: 12,
                              ),
                              child: new Text(
                                '40',
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Your target industry is", style: TextStyle(
                            color: Colors.blue),),
                        Text(" Not selected yet", style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("35% profile completed",
                        style: TextStyle(color: Colors.blue),),
                      Container(
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.35,
                            minHeight: 8,
                          ),
                        ),
                      ),
                    ],),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 350,
                          decoration: BoxDecoration(
                          ),
                          child: CarouselSlider.builder(
                            itemCount: images.length,
                            itemBuilder: (context, index, realIndex) {
                              final image = images[index];
                              return buildImage(images, index);
                            },
                            options: CarouselOptions(
                              height: 180.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration: Duration(
                                  milliseconds: 800),
                              viewportFraction: 1,
                              onPageChanged: (index,reason) => setState(() => activeIndex = index),
                            ),
                          ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  buildIndicator(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.blue[900],Colors.blue[100],]
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(CupertinoIcons.doc_on_clipboard_fill,color: Colors.white,size: 55,),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("My",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Tests",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.blue[900],Colors.blue[100],]
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.insert_drive_file_outlined,color: Colors.white,size: 55,),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                Text("My",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Resume",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.blue[900],Colors.blue[100],]
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(CupertinoIcons.add_circled_solid,color: Colors.white,size:55,),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("My",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Targets"
                                      "",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Popular Blogs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("View More",style: TextStyle(color: Colors.blue),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20)),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 80,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                        child: Image.asset("images/ima.jpg",fit: BoxFit.cover,))),
                                Text("Providing easy to\n use, efficient"),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height: 80,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                        child: Image.asset("images/ima.jpg",fit: BoxFit.cover,))),
                                Text("Providing easy to\n use, efficient"),
                              ],
                            ),
                            SizedBox(width: 20,),Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height: 80,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                        child: Image.asset("images/ima.jpg",fit: BoxFit.cover,))),
                                Text("Providing easy to\n use, efficient"),
                              ],
                            ),
                            SizedBox(width: 20,),Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height: 80,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                        child: Image.asset("images/ima.jpg",fit: BoxFit.cover,))),
                                Text("Providing easy to\n use, efficient"),
                              ],
                            ),
                            SizedBox(width: 20,),

                        ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("My Test Overview",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("View More",style: TextStyle(color: Colors.blue),),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            overflow: Overflow.visible,
                              children:[
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 10,
                                      value: 0.4,
                                      backgroundColor: Colors.grey,
                                    ),
                                  ),
                                Positioned(top:35,left:26,child: Text("14%",style: TextStyle(color: Colors.blue,fontSize: 30),),),
                              ],
                            ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Total Tests",style: TextStyle(color: Colors.blue),),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: Colors.blue,
                                  ),
                                  child: Center(child: Text("7",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
                                ),
                              ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Completed",style: TextStyle(color: Colors.blue),),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Colors.blue,
                                ),
                                child: Center(child: Text("2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Remaining",style: TextStyle(color: Colors.blue),),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Colors.blue,
                                ),
                                child: Center(child: Text("5",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(List<String> images, int index) =>
      Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey[100],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            images[index],
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: images.length,
      effect: SlideEffect(
          spacing:  8.0,
          radius:  4.0,
          dotWidth:  10.0,
          dotHeight:  7.0,
          paintStyle:  PaintingStyle.stroke,
          strokeWidth:  1.5,
          dotColor:  Colors.grey[850],
          activeDotColor:  Colors.indigo
      ),
  );
}
