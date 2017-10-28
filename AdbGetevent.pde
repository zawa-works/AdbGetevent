void setup() {
  size(360, 640);

  //テキストファイルを空に
  PrintWriter output;  
  output = createWriter("data/pos.txt");
  output.close();
}

void draw() {
  background(0, 0, 255);

  //テキストファイルを読み込む
  String []lines = loadStrings("data/pos.txt");

  float posX = 0;
  float posY = 0;

  for (int i=0; i<lines.length; i++) {

    int getx_point = lines[i].indexOf("ABS_MT_POSITION_X ");
    int gety_point = lines[i].indexOf("ABS_MT_POSITION_Y ");


    if (getx_point != -1) { 

      String result = lines[i].substring(getx_point+21, getx_point+29);

      posX = unhex(result) / 3.0;//Processingの画面に合わせる

      continue;
    }

    if (gety_point != -1) {

      String result=lines[i].substring(gety_point+21, gety_point+29);

      posY = unhex(result)/3.0;//Processingの画面に合わせる

      noStroke();
      fill(-1);
      ellipse(posX, posY, 10, 10);
      continue;
    }
  }
}