// Challenge 1
// Write test cases for the next two challenges and let them fail

// Challenge 2
// Create a function that takes a number and returns its multiplicative persistence,
// which is the number of times you must multiply the digits in num until you reach a single digit.
// multiplicative(39) ➞ 3
/// Because 3 * 9 = 27, 2 * 7 = 14, 1 * 4 = 4 and 4 has only one digit.
int multiplicative(int number) {
  int mul = 1;
  int operations=0;
  int n=0;

  //List numList=num.split('');
  // print(numList);
  while (number > 9) {
    String num = number.toString();
   print(num);
    for (int i = 0; i < num.length; i++) {
      mul = mul * int.parse(num[i]);
      print(mul);
      operations++;
    }
    n++;
    number=mul;
    mul=1;
  }
  return operations-n;
}

// Challenge 3
// Mexican Wave Simulator
/// The wave (known as a Mexican wave in the English-speaking world outside North
/// America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms.
//  https://s3.amazonaws.com/edabit-images/mex.gif
//  Create a function that takes a string and turns it into a Mexican Wave.
//  Examples
//  wave("edabit") ➞ ["Edabit", "eDabit", "edAbit", "edaBit", "edabIt", "edabiT"]

//  wave("just do it") ➞ ["Just do it", "jUst do it", "juSt do it", "jusT do it", "just Do it", "just dO it", "just do It", "just do iT"]

//  wave(" ") ➞ []
List<String> wave(String word) {
  int length=word.length;
  List<String> waveList=[];
  for(int i=0;i<length;i++){
    if(word[i] !=' ')
      {
        String newWord=word.substring(0,i)+word[i].toUpperCase()+word.substring(i+1,length);
        waveList.add(newWord);
      }
}
return waveList;
}

main() {
  print(multiplicative(39));
  print(multiplicative(391));
  print(multiplicative(4));
 print(wave("eabit"));
 print(wave("just do it"));
}
