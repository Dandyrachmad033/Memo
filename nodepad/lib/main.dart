import 'package:flutter/material.dart';
import 'bar.dart';
void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  )
  );
}

class HomePage extends StatefulWidget {
  

  @override
  State<HomePage> createState() => _HomePageState();
}
final List data = [];
class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    extendBodyBehindAppBar: true;
    return Scaffold(
      appBar : AppBar(
        title: Center(child: Text("Dashboard")),
        leading: BackButton(),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        backgroundColor: Color.fromARGB(255, 12, 4, 4),
        elevation: 0.0,
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 12, 4, 4),
        child: SingleChildScrollView (
          child: Column(
            children: [
              

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Grid_view(),
              )
            ],
          ),
        ),
      ),
      
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          data.add("${data.length + 1}");
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 14, 15, 14),
      ),
        
      
      
    
    );
  }
}


class Grid_view extends StatefulWidget {
  const Grid_view({super.key});

  @override
  State<Grid_view> createState() => _Grid_viewState();
}


class _Grid_viewState extends State<Grid_view> {
    
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        mainAxisExtent: 250,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:  Color.fromARGB(255, 27, 106, 50),
          ),
          child: Center(
            child: Text(
              data[index],
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        );
      },
    );
  }
}