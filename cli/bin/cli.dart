// import 'package:cli/cli.dart' as cli;
import 'dart:io';
import 'package:http/http.dart' as http; 
import 'package:command_runner/command_runner.dart';


import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async { // main is now async and awaits the runner
  var runner = CommandRunner(); // Create an instance of your new CommandRunner
  await runner.run(arguments); // Call its run method, awaiting its Future<void>, passing in the command line arguments

}

//  const version = '0.0.1';
// void main(List<String> arguments) {
 

//   if (arguments.isEmpty || arguments.first == 'help') {
//     printUsage();
//   } else if (arguments.first == 'version') {
//     print('Dartpedia CLI version $version');
//   } else if (arguments.first == 'wikipedia') {
    

//     //pass all args AFTER wikipedia to searchWiki
//     // ensures that if no arguments are given are provided after search function, the inputArgs become null  
//     final inputArgs = arguments.length >1 ? arguments.sublist(1) : null; // creates a new list containing all the elements
//                                                                          // after the first element (search)
//     searchWikipedia(inputArgs);
//   } 
  
//   else {
//     printUsage();
//   }
// }
//                       //the argument list itself can be null
// void searchWikipedia(List<String>? arguments) async{
//   final String articleTitle;

//   //if no arguments are passed request a title
//   if (arguments == null || arguments.isEmpty) {
//     print('Please provide an article title');

//     // wait for input w/o null safety fallback
//     final inputFromStdin = stdin.readLineSync(); 
//     if (inputFromStdin == null || inputFromStdin.isEmpty) {
//       print('No article provided. Exiting');
    
//     return;  /// exit the function if theres no valid input
  
//   }
//   articleTitle = inputFromStdin;
//    }
   

  

//   else {
//     //join args into a str
//     articleTitle = arguments.join(' ');
//   } 
  
//   print('Looking up articles about "$articleTitle". Please wait.');

// //call api and await the result
//   var articleContent = await getWikipediaArticle(articleTitle);
//   print(articleContent); //print full article response 
// }

// void printUsage() {
//   print(
//     "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>"
//   );
// }

// Future<String> getWikipediaArticle(String articleTitle) async {
//   final url = Uri.https(
//     'en.wikipedia.org', // Wikipedia API domain
//     '/api/rest_v1/page/summary/$articleTitle', // API path for article summary
//   );
//                     //await pauses execution of getWikiArticle until get call completes and resturns a response
//   final response = await http.get(url);
//   if (response.statusCode == 200) { //return the body if successful
//     return response.body;
//   } 

//   return 'Error: Failed to fetch article " $articleTitle" ${response.statusCode}'; 

// }