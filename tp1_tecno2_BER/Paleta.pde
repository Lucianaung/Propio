class Paleta {
  PImage paleta;

  Paleta(String imgPaleta) {
    paleta = loadImage(imgPaleta);
  }

  color paletaCol() {
    int x = int (random (paleta.width));
    int y = int (random (paleta.height));
    return paleta.get(x, y);
  }
}
