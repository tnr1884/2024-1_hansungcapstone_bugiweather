String getSkyState(String skyState) {
  String skyStateUrl="";
  switch (skyState) {
    case "맑음" :
    case "800":
      skyStateUrl="assets/Clear.png";
      break;
    case "구름 많음":
    case "804":
      skyStateUrl="assets/Clouds.png";
      break;
    case "흐림":
      skyStateUrl="assets/Haze.png";
      break;
    case "비" :
    case "눈" :
      skyStateUrl="assets/Rain.png";
    default :
      skyStateUrl="assets/backimg.png";
  }

  return skyStateUrl;

}