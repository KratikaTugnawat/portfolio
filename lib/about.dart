import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:  Container(
        child: Stack(
        children: [
         Container(
          margin: EdgeInsets.only(top: 60),
          child: ShaderMask(
            shaderCallback: (rect){
    return LinearGradient(
    begin: Alignment.center,
    end: Alignment.bottomCenter,

    colors: [Colors.black, Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width,rect.height),);
    },
    blendMode: BlendMode.dstIn,
    child: Image.asset('assets/me.jpeg',height: 400,width: 400, fit: BoxFit.contain,),),
    ),
    Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.55),
    child: Column(
    children:  [
      Text(
        'Hi Folks! I am',style: TextStyle(
      fontSize: 20,
      color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      ),
      SizedBox(
        height: 10,
      ),
    Text('Kratika Tugnawat',style: TextStyle(
    fontSize: 50,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(
      height: 10,
    ),
    Text('Software Engineer',style: TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,),),
      SizedBox(
        height: 30,
      ),
      SizedBox(
        width: 120,
        child: TextButton(onPressed: (){}, child: Text('Hire me'),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white, foregroundColor: Colors.black,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.instagram, color: Colors.white,),),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.twitter, color: Colors.white,),),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.github, color: Colors.white,),),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.linkedin, color: Colors.white,),),

        ],
      )
    ],
    ),
    )
    ],
    ),
    ),
    );
  }
}
