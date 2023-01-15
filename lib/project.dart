import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {


  myProj(lang, title, desc, star){
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        color: Color(0xff252525),
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 10, top: 40, ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(lang,style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(title,style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(desc,style: TextStyle(
                fontSize: 15,
                color: Colors.white70,
                //  fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.star,
                    color: Colors.white70,
                    size: 18,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(star,style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                  ),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){}, icon: Icon(
                    FontAwesomeIcons.github,
                    
                    color: Colors.white,
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Projects'),
        elevation: 0,
        backgroundColor: Color(0xff252525),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myProj('FLUTTER', 'APP', 'To-Do List App', '10'),
              myProj('JAVA', 'Dekstop APP', 'Hostel Management System App', '10'),
              myProj('HTML,CSS,MYSQL&PHP', 'Website', 'Coffee Heaven', '10'),
              myProj('FLUTTER', ' APP', 'Weather App', '10'),
              myProj('FLUTTER', 'APP', 'portfolio App', '10'),
              
            ],
          ),
        ),
      ),
    );
  }
}
