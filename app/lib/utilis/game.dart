class Game {
  static int gameScore = 0;
  static List<String> choices = ["Rock", "Paper", "Scisors"];
}

class GameChoice {
  String? type = "";
  static var gameRules = {
    "Rock": {
      "Rock": "Empate!",
      "Paper": "Você perdeu!",
      "Scisors": "Você venceu!",
    },
    "Paper": {
      "Rock": "Você venceu!",
      "Paper": "Empate!",
      "Scisors": "Você perdeu!",
    },
    "Scisors": {
      "Rock": "Você perdeu!",
      "Paper": "Você venceu!",
      "Scisors": "Empate!",
    }
  };
  GameChoice(this.type);
}
