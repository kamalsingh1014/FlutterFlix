

import 'package:flutter_test/flutter_test.dart';
import 'package:fun_flix/unitTesting/DartFirstClass.dart';

void main(){

  group("Checking test cases",(){
    test("Initial counter value 0",(){
      DartFirstClass dartFirstClass = DartFirstClass();

      expect(dartFirstClass.counter,0);

    });
    test("Increment counter value 0",(){
      DartFirstClass dartFirstClass = DartFirstClass();
      dartFirstClass.counterIncrement();
      expect(dartFirstClass.counter,1);

    });
    test("Decrement counter value 0",(){
      DartFirstClass dartFirstClass = DartFirstClass();
      dartFirstClass.counterDecrement();
      expect(dartFirstClass.counter,-1);

    });

  });

}