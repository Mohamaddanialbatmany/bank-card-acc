import 'dart:html';
import 'dart:math';

void main() {
  Card card = Card(
      name: querySelector("#cardName"),
      data: querySelector("#cardData"),
      firstNum: querySelector(".numFirst"),
      secondNum: querySelector(".numSecond"),
      thirdNum: querySelector(".numThird"),
      fourthNum: querySelector(".numFourth"),
      cvv: querySelector("#cardCvv"),
      city: querySelector("#cardCity"));

  RegisterForm register = RegisterForm(
      card: card,
      fullName: querySelector("#fullName"),
      dataRegister: querySelector("#data"),
      cityRegister: querySelector("#city"),
      cvvRegister: querySelector("#cvv"),
      submit: querySelector("#submit"));
}

class Card {
  Card(
      {this.name,
      this.data,
      this.firstNum,
      this.secondNum,
      this.thirdNum,
      this.fourthNum,
      this.cvv,
      this.city});

  DivElement name;
  DivElement data;
  DivElement firstNum;
  DivElement secondNum;
  DivElement thirdNum;
  DivElement fourthNum;
  DivElement cvv;
  DivElement city;
}

class RegisterForm {
  RegisterForm(
      {this.card,
      this.fullName,
      this.dataRegister,
      this.cityRegister,
      this.cvvRegister,
      this.submit}) {
    submit.onClick.listen((_) {
      if (fullName.value == "") {
        window.alert("please enter the content");
      } else {
        enteringTheContent();
      }
    });
  }

  Card card;
  InputElement fullName;
  InputElement dataRegister;
  InputElement cityRegister;
  NumberInputElement cvvRegister;
  ButtonElement submit;

  enteringTheContent() {
    Random random = Random(111);
    Random randomAcount = Random(1111);
    card.name.text = fullName.value;
    card.data.text = dataRegister.value;
    card.cvv.text = random.nextInt(999).toString();
    card.city.text = cityRegister.value;
    card.firstNum.text = randomAcount.nextInt(9876).toString();
    card.secondNum.text = randomAcount.nextInt(9876).toString();
    card.thirdNum.text = randomAcount.nextInt(9876).toString();
    card.fourthNum.text = randomAcount.nextInt(9999).toString();
  }
}
