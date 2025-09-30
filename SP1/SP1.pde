//Hardcode shapes, tekst og billeder
//Erstattet hardcode med globale variabler og global data
//Dannet loops istedetfor gentagelser
//Komprimer koden ved hjælp af Loops
//18. September - Indfør arrays

//Globale variabler for layout
int boxW = 285;//Bredde på kasse
int boxH = 28;//Højde på kasse
int leftBox = 10; //x-værdi for de venstre kasser
int rightBox = 305;//x-værdi for de højre kasser

//Globale variaber for tekstindstillinger
int textColor = 0; //sort
int textSizeValue = 12;

//Globale data
String groupLetterA = "Group A";
String groupLetterB = "Group B";
String groupLetterC = "Group C";
String groupLetterD = "Group D";
String country1 = "Russia";
String country2 = "Saudi Arabia";
String country3 = "Egypt";
String country4 = "Uruguay";
String country5 = "Portugal";
String country6 = "Spain";
String country7 = "Morocco";
String country8 = "Iran";
String country9 = "France";
String country10 = "Australia";
String country11 = "Peru";
String country12 = "Denmark";
String country13 = "Argentina";
String country14 = "Iceland";
String country15 = "Croatia";
String country16= "Nigeria";

//loop
void boxWithText(int x, int y, int w, int h, String txt){
  //tegn box
  fill (255);
  stroke (0);
  rect (x, y, w, h);
  //tekst
  fill (textColor);
  textSize (textSizeValue);//skriftstørrelse
  textAlign(LEFT, CENTER);// venstrestil, lodret ventreret
  text (txt, x+8, y+h/2);
}

void setup(){
size (600,300);
background (5,22,64);//blå baggrundsfarve
stroke(255);
line (300,0,300,300);
stroke(0);

//bokse + tekst
boxWithText (leftBox, 0, boxW, boxH, groupLetterA);
boxWithText (leftBox, 30, boxW, boxH, country1);//Russia
boxWithText (leftBox, 60, boxW, boxH, country2);//Saudi Arabia
boxWithText (leftBox, 90, boxW, boxH, country3);//Egypt
boxWithText (leftBox, 120, boxW, boxH, country4);//Uruguay

boxWithText (leftBox, 150, boxW, boxH, groupLetterB);
boxWithText (leftBox, 180, boxW, boxH, country5);//Portugal
boxWithText (leftBox, 210, boxW, boxH, country6);//Spain
boxWithText (leftBox, 240, boxW, boxH, country7);//Morocco
boxWithText (leftBox, 270, boxW, boxH, country8);//Iran

boxWithText (rightBox, 0, boxW, boxH, groupLetterC);
boxWithText (rightBox, 30, boxW, boxH, country9);//Russia
boxWithText (rightBox, 60, boxW, boxH, country10);//Saudi Arabia
boxWithText (rightBox, 90, boxW, boxH, country11);//Egypt
boxWithText (rightBox, 120, boxW, boxH, country12);//Uruguay

boxWithText (rightBox, 150, boxW, boxH, groupLetterD);
boxWithText (rightBox, 180, boxW, boxH, country13);//Portugal
boxWithText (rightBox, 210, boxW, boxH, country14);//Spain
boxWithText (rightBox, 240, boxW, boxH, country15);//Morocco
boxWithText (rightBox, 270, boxW, boxH, country16);//Iran
}
