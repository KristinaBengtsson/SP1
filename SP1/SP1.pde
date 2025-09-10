// 30. August: Erstattet hardcode med globale variabler
// . September: Dannet loops istedetfor gentagelser

//Globale variabler
int boxW = 285;//Bredde på kasse
int boxH = 28;//Højde på kasse
int leftBox = 10; //x-værdi for de venstre kasser
int rightBox = 305;//x-værdi for de højre kasser

void setup(){
size (600,300);

background (5,22,64);//blå baggrundsfarve
stroke(255);
line (300,0,300,300);


stroke(0);
rect (leftBox,0,boxW,boxH);//TopVenstre kasse
rect (leftBox,30,boxW,boxH);//TopVenstre kasse
rect (leftBox,60,boxW,boxH);//TopVenstre kasse
rect (leftBox,90,boxW,boxH);//TopVenstre kasse
rect (leftBox,120,boxW,boxH);//TopVenstre kasse

rect (rightBox,0,boxW,boxH);//TopHøjre kasse
rect (rightBox,30,boxW,boxH);//TopHøjre kasse
rect (rightBox,60,boxW,boxH);//TopHøjre kasse
rect (rightBox,90,boxW,boxH);//TopHøjre kasse
rect (rightBox,120,boxW,boxH);//TopHøjre kasse

rect (leftBox,150,boxW,boxH);//BundVenstre kasse
rect (leftBox,180,boxW,boxH);//BundVenstre kasse
rect (leftBox,210,boxW,boxH);//BundVenstre kasse
rect (leftBox,240,boxW,boxH);//BundVenstre kasse
rect (leftBox,270,boxW,boxH);//BundVenstre kasse

rect (rightBox,150,boxW,boxH);//BundHøjre kasse
rect (rightBox,180,boxW,boxH);//BundHøjre kasse
rect (rightBox,210,boxW,boxH);//BundHøjre kasse
rect (rightBox,240,boxW,boxH);//BundHøjre kasse
rect (rightBox,270,boxW,boxH);//BundHøjre kasse
}
