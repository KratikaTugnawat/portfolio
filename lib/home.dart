import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchive(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  mySpec(icon, tech) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Text(
                tech,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu),
          itemBuilder: (context)=>[
            PopupMenuItem(
                child: TextButton(
                  child: Text(
                  'Projects',style: TextStyle(
                    color: Colors.white,
                  ),
                 ),
                onPressed: (){
                    Navigator.pushNamed(context, 'project');
                } ,
            ),
              value: 1,
            ),
            PopupMenuItem(
                child: TextButton(
                  child: Text(
                  'About Me',style: TextStyle(
                    color: Colors.white,
                  ),
                 ),
                onPressed: (){
                  Navigator.pushNamed(context, 'about');
                } ,
            ),
              value: 2,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: ShaderMask(
                    shaderCallback: (rect){
                      return LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,

                          colors: [Colors.black, Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width,rect.height),);
                    },
                      blendMode: BlendMode.dstIn,
                    child: Image.asset('assets/me.jpeg',height: 350,width: 400, fit: BoxFit.contain,),),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.49),
                child: Column(
                  children: [
                    Text('Kratika Tugnawat',style: TextStyle(
                      fontFamily: "Soho",
                    fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text('Software Engineer',style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Soho",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,),),
                  ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            height: 500,
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchive('05', 'Project'),
                    myAchive('00', 'Client'),
                    myAchive('30', 'Messages'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Specialized In',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.android, 'Java'),
                        mySpec(Icons.android, 'Flutter'),
                        mySpec(Icons.android, 'Dart'),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.android, 'Html'),
                        mySpec(Icons.android, 'CSS'),
                        mySpec(Icons.android, 'c'),
                      ],
                    ),
                    
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
