import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

Color darkColor = Color(0XFF202735);
double soundValue = 20;
double sliderValue =50;
int currentValue = 24;
bool swich = false ;


class YourCar extends StatefulWidget {
  const YourCar({Key? key}) : super(key: key);

  @override
  State<YourCar> createState() => _YourCarState();
}

class _YourCarState extends State<YourCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: NestedScrollView(
        headerSliverBuilder: (Context,innerBoxIsScrolled)=>[
          SliverAppBar(
            elevation: 0,
            backgroundColor: Color(0XFF82E0AA),
            title: Text(
              'Hello,Alaa',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color:Colors.black,
              ),
            ),
            centerTitle :false,
            actions: [
              Icon(
                Icons.notifications_none_outlined,
                color:Colors.black,
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                  radius: 20.0,
                  backgroundImage:AssetImage('assest/images/Alaa Yasser.jpg')
              ),
              SizedBox(width: 15,),
            ],
          ),
        ],


      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                      colors: [
                        Color(0XFF82E0AA),
                        Color(0XFFD5F5E3),
                      ]
                  ),
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    Text(
                        'Lil Nas X',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7,),
                    Text(
                      'HIGHEST IN THE ROOM',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26
                    ),
                    ),
                    SizedBox(height: 10,),
                    CircleAvatar(
                      backgroundColor: Colors.white60,
                      radius: 25,
                    ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.keyboard_double_arrow_left),
                     Container(
                       width:300,
                       child: Slider(
                             value: soundValue,
                             max: 300,
                             min: 10,
                             onChanged: (value){
                                setState((){
                                  soundValue =value;
                                });
                             },
                         activeColor: Colors.black,
                         inactiveColor: Colors.black12 ,
                         ),
                     ),
                     Icon(Icons.keyboard_double_arrow_right),
                   ],
                 ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(150),
                        ),

                        color: darkColor,
                      ),
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(height: 40,),
                          Text(
                            'Your Car',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 7,),
                          Container(
                            width: 200,
                            child: Text(
                              '''Sensor readings,charging remote control''',
                              textAlign:TextAlign.center,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white60,
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Container(
                            margin:  EdgeInsets.symmetric(horizontal: 50.0),
                            padding: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color:Color(0XFFD5F5E3),width: 1.0),
                              color: darkColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color:Color.fromARGB(15, 213, 245, 227),
                                  spreadRadius: 70,
                                ),
                              ]
                            ),
                            child: Container(
                              padding: EdgeInsets.all(20.0),
                                width: 300,
                                height: 300,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0XFF82E0AA),
                                        Color(0XFFD5F5E3),
                                      ]
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: darkColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text(
                                            '300',
                                          style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                          ),
                                        ),
                                        Text(
                                          'KM',
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                            ),
                              ),
                          ),
                          /*==========================================*/
                          /* ========= car characteristics ====== */
                          /*==========================================*/
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.center ,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      'Battery',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      letterSpacing: 1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              SliderTheme(
                                                data: SliderThemeData(
                                                  trackHeight: 80,
                                                  trackShape: RectangularSliderTrackShape()
                                                ),
                                                child: Stack(
                                                  children:[
                                                  RotatedBox(
                                                    quarterTurns: 3,
                                                    child: Slider(
                                                      value: sliderValue,
                                                      min: 10,
                                                      max: 100,
                                                      onChanged: (value){
                                                        setState((){
                                                          sliderValue =value;
                                                        });
                                                      },
                                                      activeColor: Color(0XFF82E0AA),
                                                    ),
                                                  ),
                                                    Center(
                                                        child: Text(
                                                          '${sliderValue.round()}',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                    )
                                                  ]
                                                ),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(40, 213, 245, 227 ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 2,
                                                blurRadius: 3, // changes position of shadow
                                              ),
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(25)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(40, 213, 245, 227 ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey.withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 3, // changes position of shadow
                                                    ),
                                                  ],
                                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                                ),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                              'Current',
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold,
                                                              letterSpacing: 1,
                                                            ),
                                                          ),
                                                          SizedBox(width: 45,),
                                                          Icon(
                                                              Icons.error_outline,
                                                            color: Colors.white60 ,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Row(
                                                        children: [
                                                          IconButton(
                                                            icon:  Icon(
                                                              Icons.remove_circle_outline,
                                                              color: Colors.white60,
                                                            ),
                                                            onPressed: (){
                                                              setState((){
                                                                currentValue--;
                                                              });
                                                            },
                                                          ),
                                                          Text(
                                                              '$currentValue',
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 40,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          IconButton(
                                                            icon: Icon(
                                                              Icons.add_circle_outline,
                                                              color: Colors.white60,
                                                            ),
                                                            onPressed: (){
                                                              setState((){
                                                                currentValue++;
                                                              });
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                          'A',
                                                        style: TextStyle(
                                                          color: Colors.white60,
                                                          fontSize: 17,

                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              SizedBox(height: 30,),
                                              Container(
                                                padding: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(40, 213, 245, 227 ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey.withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 3, // changes position of shadow
                                                    ),
                                                  ],
                                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                            'Cable',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            letterSpacing: 1,

                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 25,),
                                                    Row(
                                                      children: [
                                                        Text(
                                                            'Locked',
                                                          style: TextStyle(
                                                            color: Colors.white60,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        SizedBox(width: 20,),
                                                        Container(
                                                         child :FlutterSwitch(
                                                           activeColor: Color(0XFF82E0AA ),
                                                           inactiveColor: Colors.grey,
                                                           value: swich,
                                                           onToggle: (bool value){
                                                             setState((){
                                                               swich=!swich;
                                                             });
                                                           },
                                                         ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                ),
              ),
          ],
        ),
      ),
    ),
    );
  }
}