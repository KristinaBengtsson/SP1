// - Layout -
int canvasW = 1000, canvasH = 600; //??? virker ikke?
int colGap = 20;         // afstand mellem kolonner (midtstregen)
int margin = 20;
int colW = (canvasW - margin*2 - colGap) / 2;

int rowH = 48;           // højde på en hvid boks
int headerH = 55;        // højde på "GROUP X" baren
int rowGap = 8;          // mellemrum mellem rækker
int flagW = 70;          // flagbredde

int bg = color(5,22,64);  // mørk blå baggrund
int boxFill = 255;       // hvide bokse
int textDark = 0;        // sort tekst
int headerFill = color(24,44,76);
int accentL  = color(94,218,245);  // cyan
int accentR = color(250,230,68);  // gul

PFont font;

// ---------- Data (arrays) ----------
String[] groupNamesLeft  = { "GROUP A", "GROUP B" };
String[] groupNamesRight = { "GROUP C", "GROUP D" };

String[][] groupsLeft = {
  { "RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY" },     // A
  { "PORTUGAL", "SPAIN", "MOROCCO", "IRAN" }            // B
};

String[][] groupsRight = {
  { "FRANCE", "AUSTRALIA", "PERU", "DENMARK" },         // C
  { "ARGENTINA", "ICELAND", "CROATIA", "NIGERIA" }      // D
};

// ---------- Setup ----------
void setup() {
  //size(canvasW, canvasH); //??? Virker ikke
  size(1000, 600);
  background(bg);
  font = createFont("Arial Bold", 32, true);
  textFont(font);

  // lodret skillelinje
  stroke(255);
  strokeWeight(3);
  line(width/2, margin, width/2, height - margin);

  // tegn venstre og højre kolonne
  drawColumn(margin, groupNamesLeft, groupsLeft, true);
  drawColumn(margin + colW + colGap, groupNamesRight, groupsRight, false);
}

// ---------- Tegnemetoder ----------
void drawColumn(int x, String[] headers, String[][] groups, boolean isLeft) {
  int y = margin;
  for (int g = 0; g < headers.length; g++) {
    // header
    drawGroupHeader(x, y, colW, headerH, headers[g]); 
    y += headerH + rowGap;

    // 4 rækker (lande)
    for (int i = 0; i < groups[g].length; i++) {
      // accentbar i højre side af boksen (cyan venstre kolonne, gul højre kolonne)
      int accent = isLeft ? accentL : accentR;
      drawBoxWithText(x, y, colW, rowH, groups[g][i], accent);
      y += rowH + rowGap;
    }
    // ekstra luft mellem grupper
    y += 10;
  }
}

void drawGroupHeader(int x, int y, int w, int h, String label) {
  // mørk blå bar baggrund
  noStroke();
  fill(headerFill);
  rect(x, y, w, h, 6); //6 er radius på hjørnerne og gør dem afrundede i headeren

  // cyan “GROUP” farve
  fill(94,218,245);
  textSize(28);
  textAlign(CENTER, CENTER);
  text(label, x + w/2, y + h/2);
}

void drawBoxWithText(int x, int y, int w, int h, String txt, int accentColor) {
  // hvid boks
  stroke(0);
  strokeWeight(2);
  fill(boxFill);
  rect(x, y, w, h);

  // accentbar til højre
  noStroke();
  fill(accentColor);
  rect(x + w - 12, y + 6, 8, h - 12, 3); // lille radius på hjørnerne 3

  // “flag”-placering
  fill(200);
  rect(x + 6, y + 6, flagW - 12, h - 12, 4); // lille radius på hjørner 4

  // landets navn
  fill(textDark);
  textAlign(LEFT, CENTER);
  textSize(36);
  text(txt, x + flagW + 14, y + h/2 + 2);
}
