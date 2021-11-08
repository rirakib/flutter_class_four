import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}


//Main statelesswidget ...............


class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rirrakib',
      home: MyApp(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
       
        title: const Text('Resume',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300
        
        ),),
        
        
        actions: [
          
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>appContact()));
          }, icon: Icon(Icons.contact_mail),color: Colors.white,)
        ],
      ),
      drawer:Drawer(
        child: Center(child: Text('Rir Rakib',style: TextStyle(fontSize: 35),),),
      ),
      body: Center(
        child: Container(
        child: (Text('Hello',
          style: TextStyle(
            fontSize: 25,
            
            ),
           
        )
        
        ),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.greenAccent)
        ),
        
         
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>secondPageApp()));
      },child: const Icon(Icons.arrow_right),),
    );
  }
}


class secondPage extends StatelessWidget {
  const secondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second Page',
      home: secondPageApp(),
    );
  }
}
class secondPageApp extends StatefulWidget {
  const secondPageApp({ Key? key }) : super(key: key);

  @override
  _secondPageAppState createState() => _secondPageAppState();
}

class _secondPageAppState extends State<secondPageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(title: Text('Second Page'),),
    );
  }
}

class notification extends StatelessWidget {
  const notification({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification',
      home: appContact(),
    );
  }
}

class appContact extends StatefulWidget {
  const appContact({ Key? key }) : super(key: key);

  @override
  _appContactState createState() => _appContactState();
}

class _appContactState extends State<appContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact me..',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500
        ),),
      ),
    );
  }
}