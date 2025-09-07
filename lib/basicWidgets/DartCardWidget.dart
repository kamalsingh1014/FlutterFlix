import 'package:flutter/material.dart';
import 'package:fun_flix/dartCustomClass/ProfileCustomClass.dart';


class DartCardWidget extends StatefulWidget {
  const DartCardWidget({super.key});

  @override
  State<DartCardWidget> createState() => _DartCardWidgetState();
}

class _DartCardWidgetState extends State<DartCardWidget> {
  List<ProfileCustomClass> profileList = [
    ProfileCustomClass(name: "Kamal Singh", age: "29"),
    ProfileCustomClass(name: "Ankit Rawat", age: "30"),
    ProfileCustomClass(name: "Jitin Tyagi", age: "31"),
    ProfileCustomClass(name: "Prem Sarkar", age: "28"),
    ProfileCustomClass(name: "Monu Ansari", age: "29"),
    ProfileCustomClass(name: "Ranu Thakur", age: "30"),

  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Learn Card Widgets"),
        //   centerTitle: true,
        //   backgroundColor: Colors.green,
        // ),
        body: SafeArea(//It will remove the extra space from toolbar
          child: Column(
            children: profileList.map((it){
              return getPlayerCard(it,(){
                setState(() {
                  profileList.remove(it);
                });
              });
            }).toList(),
          ),
        ),
      ),
    );
  }
}

Widget getPlayerCard(ProfileCustomClass profileCustomClass,
    VoidCallback delete){
  return Card(
    elevation: 50.0,
    margin: EdgeInsets.all(5.0),
    color: Colors.blue,
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage("assets/image/login_bg.png"),
          ),
          SizedBox(width: 50.0,),
          Column(
              children: <Widget>[
                Text(profileCustomClass.name,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.purple
                ),
                ), Text(profileCustomClass.age,style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.purple
                ),),
                ElevatedButton(onPressed: delete, child:
                Icon(Icons.delete,
                color: Colors.red,))
              ]
          ),
        ],
      ),
    ),
  );
}


/**
 * 🔹1. Using ListView.builder (Most Common for Dynamic Lists)
    Instead of manually mapping profileList.map(...), you can use ListView.builder for efficiency:
 *
 *    body: ListView.builder(
    itemCount: profileList.length,
    itemBuilder: (context, index) {
    return getPlayerCard(profileList[index]);
    },
    ),
    ✅ Advantage: Handles long lists efficiently (lazy loading).
    ❌ Disadvantage: Slightly more boilerplate.
 *
 * 🔹 2. Using ListTile inside Card (Simpler)
    Flutter provides a ListTile widget which reduces boilerplate:
    Widget getPlayerCard(ProfileCustomClass profile) {
    return Card(
    margin: EdgeInsets.all(10),
    child: ListTile(
    leading: CircleAvatar(
    radius: 30,
    backgroundImage: AssetImage("assets/image/login_bg.png"),
    ),
    title: Text(profile.name,
    style: TextStyle(fontSize: 18, color: Colors.purple)),
    subtitle: Text("Age: ${profile.age}",
    style: TextStyle(fontSize: 16, color: Colors.black54)),
    ),
    );
    }
    ✅ Advantage: Cleaner, less code.
    ❌ Disadvantage: Less customizable layout compared to Row/Column.
    🔹 3. Using GridView (Cards in Grid Form)
    If you want the profiles displayed like Instagram-style cards:
    body: GridView.count(
    crossAxisCount: 2,
    children: profileList.map((profile) => getPlayerCard(profile)).toList(),
    ),
    ✅ Advantage: Great for profile/gallery layout.
    ❌ Disadvantage: Not scroll-efficient if many items.
    🔹 4. Extracting into a Reusable Stateless Widget
    Instead of a function getPlayerCard, create a custom widget:
    class ProfileCard extends StatelessWidget {
    final ProfileCustomClass profile;
    const ProfileCard({super.key, required this.profile});

    @override
    Widget build(BuildContext context) {
    return Card(
    margin: EdgeInsets.all(10),
    color: Colors.blue,
    child: ListTile(
    leading: CircleAvatar(
    radius: 30,
    backgroundImage: AssetImage("assets/image/login_bg.png"),
    ),
    title: Text(profile.name),
    subtitle: Text(profile.age),
    ),
    );
    }
    }
    Then use it:
    body: ListView(
    children: profileList.map((p) => ProfileCard(profile: p)).toList(),
    ),
    ✅ Advantage: Clean separation of UI.
    ❌ Disadvantage: Slightly more boilerplate for simple UIs.
    🔹 5. Using ListView.separated (For spacing between Cards)
    body: ListView.separated(
    itemCount: profileList.length,
    itemBuilder: (context, index) => getPlayerCard(profileList[index]),
    separatorBuilder: (context, index) => Divider(),
    ),
    ✅ Advantage: Adds spacing/dividers automatically.
    ❌ Disadvantage: Small extra setup.
    🔹 6. Using FutureBuilder / StreamBuilder (If Data from API/DB)
    If your list is dynamic (from API or DB):
    body: FutureBuilder<List<ProfileCustomClass>>(
    future: fetchProfiles(), // async function
    builder: (context, snapshot) {
    if (!snapshot.hasData) return CircularProgressIndicator();
    return ListView(
    children: snapshot.data!.map((p) => getPlayerCard(p)).toList(),
    );
    },
    ),
    ✅ Advantage: Perfect for real-world apps with async data.
    ❌ Disadvantage: More complex setup.
    ✨ So in short:
    For small static lists → Column or ListView.
    For long dynamic lists → ListView.builder.
    For grid-like UI → GridView.
    For clean reusability → Custom ProfileCard widget.
    For async API → FutureBuilder/StreamBuilder.
 *
 *
 * */

