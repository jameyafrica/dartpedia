// import 'package:cli/cli.dart' as cli;
import 'dart:io';
import 'package:http/http.dart' as http; 


 const version = '0.0.1';
void main(List<String> arguments) {
 

  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    
    // ensures that if no arguments are given are provided after search function, the inputArgs become null  
    final inputArgs = arguments.length >1 ? arguments.sublist(1) : null; // creates a new list containing all the elements
                                                                         // after the first element (search)
    searchWikipedia(inputArgs);
  } 
  
  else {
    printUsage();
  }
}
                      //the argument list itself can be null
void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  //if no arguments are passed request a title
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title');

    // wait for input and provide a default empty str if the input is null
    articleTitle = stdin.readLineSync() ?? ''; 
  } 

  else {
    //join args into a str
    articleTitle = arguments.join(' ');
  } 
  
  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>"
  );
}

