import 'package:cat_exam/models/fact.dart';
import 'package:hive/hive.dart';

class History {
 late Box<Fact> _facts;

 Future<void> init() async {
   Hive.registerAdapter(FactAdapter());
   _facts = await Hive.openBox<Fact>('facts');
 }

 List<Fact> getFacts(){
   return _facts.values.toList();
 }

 void addFacts(final String text, final String creationAt){
   _facts.add(Fact(text, creationAt));
 }
}