// ignore_for_file: file_names, prefer_const_constructors

import 'package:FoodApp/constants.dart';
import 'package:FoodApp/screens/home/components/Burger_Product.dart';
import 'package:FoodApp/screens/home/components/search_form.dart';
import 'package:FoodApp/screens/home/home_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEC635),
        leading: IconButton(
          onPressed: () {},
        
          icon: Image.asset("assets/images/Menu.png"),
        ),
       
     actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: CircleAvatar(
    radius: 20.0,
    child: ClipRRect(
        child: Image.asset('assets/images/Profile.png'),
        borderRadius: BorderRadius.circular(50.0),
    ),
),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image:  DecorationImage(image:  AssetImage("assets/images/Mask Group 2.png"), fit: BoxFit.cover,),
            ),
          
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/images/Card.png")),
             Padding(
               padding: const EdgeInsets.only(left:10),
               child: SearchForm(),
             ),
             Align(
               alignment: Alignment(-0.8,5.00),
               child: Text(
                "Categories",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                       ),
             ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.01,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                  [
                    
               Padding(
                 padding: const EdgeInsets.only(left: 25),
                 child: ClipRRect(
                   
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.35,
                        height: MediaQuery.of(context).size.height/15,
                        child: ElevatedButton.icon(
                       style: ElevatedButton.styleFrom(
                         primary: Colors.amber.shade100,
                         onPrimary: Colors.black,
                    shadowColor: Colors.black,
                    elevation: 20,
                      ),
                        
                          icon:  Image.asset("assets/images/PizzaCircle.png",
                          height: MediaQuery.of(context).size.height*0.2,
                          width: MediaQuery.of(context).size.width*0.1,
                          ),
                           
                          
                          label: const Align(
                            alignment: Alignment(-1,0.1),
                            child: Text(
                              'Pizza',
                              style: TextStyle(fontSize: 18),
                              
                            ),
                            
                          ),
                          
                          onPressed: () {
                            Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                            return HomeScreen();
                        },
                        ),);
                          },
                          
                        ),
                      ),
                    ),
               ),
                    
              
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.35,
                        height: MediaQuery.of(context).size.height/15,
                        child: ElevatedButton.icon(
                       style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFEC635)),
                        ),
                          icon:  Image.asset("assets/images/BurgerCircle.png",
                          
                          height: MediaQuery.of(context).size.height*0.2,
                          width: MediaQuery.of(context).size.width*0.1,
                          ),
                           
                          
                          label: const Align(
                            alignment: Alignment(-1,0.1),
                            child: Text(
                              'Burger',
                              style: TextStyle(fontSize: 18),
                              
                            ),
                            
                          ),
                          onPressed: () {
                          
                    
                    
                          },
                        ),
                      ),
                    ),
              ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: ClipRRect(
                 
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.35,
                        height: MediaQuery.of(context).size.height/15,
                        child: ElevatedButton.icon(
                       style: ElevatedButton.styleFrom(
                         primary: Colors.amber.shade100,
                         onPrimary: Colors.black,
                    shadowColor: Colors.black,
                    elevation: 20,
                      ),
                        
                          icon:  Image.asset("assets/images/PizzaCircle.png",
                          height: MediaQuery.of(context).size.height*0.2,
                          width: MediaQuery.of(context).size.width*0.1,
                          ),
                           
                          
                          label: const Align(
                            alignment: Alignment(-1,0.1),
                            child: Text(
                              'Pizza',
                              style: TextStyle(fontSize: 18),
                              
                            ),
                            
                          ),
                          
                          onPressed: () {
                            Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                            return HomeScreen();
                        },
                        ),);
                          },
                          
                        ),
                      ),
                    ),
                  ),
                   ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
            ),
             Align(
               alignment: Alignment(-0.79,5.00),
               child: Text(
                "Popular Now",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                       ),
             ),
 
            const SizedBox(height: defaultPadding * 1),
           Padding(
             padding: const EdgeInsets.only(left:20),
             child: const Burger_Products(),
           ),
         
          ],
        ),
          )]),
      ),
      );
  }
}
