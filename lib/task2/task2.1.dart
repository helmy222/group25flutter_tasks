// program takes variable for degree out of 100 and print grade(A,B،C,D) using switch
void main (){
  int degree = 70;
  String grade;
  switch (degree ~/ 10) {
    case 10:
    case 9:
      grade = 'A';
      break;
    case 8:
      grade = 'B';
      break;
    case 7:
      grade = 'C';
      break;
    default:
      grade = 'D';
      break;
  }
  print('Your grade is $grade.');}