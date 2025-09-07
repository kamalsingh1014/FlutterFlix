
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DartDateTimePickerWidget extends StatefulWidget {
  const DartDateTimePickerWidget({super.key});

  @override
  State<DartDateTimePickerWidget> createState() => _DartDateTimePickerWidgetState();
}

class _DartDateTimePickerWidgetState extends State<DartDateTimePickerWidget> {
  TextEditingController _dateOfBirthController = TextEditingController();
  DateTime? _dateTime;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        title: Text(" Drift Date Picker Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child : Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 40.0,),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: _dateOfBirthController,
                    validator: (value){
                      if(value == null || value.isEmpty ){
                        return 'Date cannot be null or Empty';
                      }
                    },
                    readOnly: true,
                    onTap: () => pickDate0fBirth(context),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      label: Text('Enter Date'),
                    ),
                  ),
                ],
              ),

            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print(" Drift Login Floating Button");
          // Navigator.pushReplacementNamed(context, '/home',
          //     arguments: {
          //       'name':'Kamal'
          //     });
          Navigator.pushNamed(context, '/driftHome',
              arguments: {
                'name':'Kamal'
              });
        },
        child: Icon(
          Icons.home,
          color: Colors.blue,
        ),),
    );
  }
  Future<void> pickDate0fBirth(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: _dateTime ?? initialDate,
        firstDate: DateTime(DateTime
            .now()
            .year - 100),
        lastDate: DateTime(DateTime
            .now()
            .year + 1),
        builder: (context, child) {
          return Theme(
            data: ThemeData().copyWith(
              colorScheme: const ColorScheme.light(
                  primary: Colors.pink,
                  onPrimary: Colors.white,
                  onSurface: Colors.black
              ),
              cardColor: Colors.white,
            ),
            child: child!,
          );
        }
    );
    if (newDate == null) {
      return;
    }
    setState(() {
      _dateTime = newDate;
      _dateOfBirthController.text = DateFormat('dd/MM/yyyy').format(newDate).toString();
    });
  }
}


