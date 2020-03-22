import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/detailsPage.dart';


void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: myApp(),

      )
  );

}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0,left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
          SizedBox(height: 25.0,),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'To-Do',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(width: 10.0,),
                Text(
                  'List',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height:47.0,),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0,right: 25.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        buildList('images/img1.png', 'Monday', 'Pending'),
                        buildList('images/img2.png', 'Tuesday', 'Pending'),
                        buildList('images/img3.png', 'Wednesday', 'Pending'),
                        buildList('images/img4.png', 'Thursday', 'Pending'),
                        buildList('images/img5.png', 'Friday', 'Pending'),
                        buildList('images/img6.png', 'Saturday', 'Pending'),
                        buildList('images/img7.png', 'Sunday', 'Pending'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: (){

        },
      ),
    );
  }

  Widget buildList(String imgPath , String name , String task){
    return Padding(
      padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsPage(imgPath,name,task)
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Hero(
                    tag: imgPath,
                    child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        task,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
                icon: Icon(Icons.add),
                color: Colors.black,
                onPressed: (){

                }
            ),
          ],
        ),
      ),
    );
  }
}
