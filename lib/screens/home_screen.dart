import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_application_1/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Container(
                height: 57.6,
                margin: const EdgeInsets.only(
                  top: 28.8,
                  left: 28.8,
                  right: 28.8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: const Color(0x080a0928),
                      ),
                      child: const Icon(Icons.reorder),
                    ),
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: const Color(0x080a0928)
                      ),
                      child: const Icon(Icons.search),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48, left: 28.8),
                child: Text(
                  'Welcome \n Calon Programmer',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 45.6, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 218.4,
                margin: const EdgeInsets.only(top: 28.8),
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image:const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://picsum.photos/250?image=9'))),
                      ), 
                      onTap: () {
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> const DetailScreen(),
                          ),
                        );
                        print("You Click Me");
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image:const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://picsum.photos/250?image=9'))),
                      ), 
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> const DetailScreen(),
                          ),
                        );
                        print("You Click Me");
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image:const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://picsum.photos/250?image=9'))),
                      ), 
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> const DetailScreen(),
                          ),
                        );
                        print("You Click Me");
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.8, top: 28.8),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.blueGrey,
                    dotHeight: 5,
                    dotWidth: 6,
                    spacing: 5),
                  ),
                ),
                // judul untuk section vertical content
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Untuk Anda',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Show All',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                //Listview (Vertical content)
                Padding(
                  padding: EdgeInsets.only(top: 50, left:30, right: 30),
                  child: GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              NetworkImage('https://picsum.photos/250?image=9'),
                        )
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> const DetailScreen(),
                          ),
                        );
                      print("You Click Me");
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left:30, right: 30),
                  child: GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              NetworkImage('https://picsum.photos/250?image=9'),
                        )
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> const DetailScreen(),
                          ),
                        );
                      print("You Click Me");
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left:30, right: 30),
                  child: GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              NetworkImage('https://picsum.photos/250?image=9'),
                        )
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> const DetailScreen(),
                          ),
                        );
                      print("You Click Me");
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left:30, right: 30),
                  child: GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              NetworkImage('https://picsum.photos/250?image=9'),
                        )
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> const DetailScreen(),
                          ),
                        );
                      print("You Click Me");
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left:30, right: 30),
                  child: GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              NetworkImage('https://picsum.photos/250?image=9'),
                        )
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> const DetailScreen(),
                          ),
                        );
                      print("You Click Me");
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left:30, right: 30),
                  child: GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              NetworkImage('https://picsum.photos/250?image=9'),
                        )
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> const DetailScreen(),
                          ),
                        );
                      
                      print("You Click Me");
                    },
                  ),
                ),
                
                //Penutup ListVIew
            ],
          ),
        ),
      ),
    );
  }
}