import 'dart:io';

void CelsisusParafahrenheit(){
  stdout.write("Digite a temperatura em Celsius:");
  double celsius = double.parse(stdin.readLineSync()!);
  print ("Resultado: $celsius°C = ${((celsius * 9/5) + 32)}");

}

void FahrenheitParaCelsius() {
  stdout.write("Digite a temperatura em Fahrenheit: ");
  double fahrenheit = double.parse(stdin.readLineSync()!);
  print ("Resultado: $fahrenheit°C = ${ ( fahrenheit - 32)*5/9 }");

}

void CelsiusParaKelvin (){
  stdout.write("Digite a temperatura em celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);
  print ("Resultado: $celsius°C = ${celsius +273.15}");

}

void KelvinParaCelsius(){
  stdout.write("Digite a temperatura em   kelvin: ");
  double kelvin = double.parse(stdin.readLineSync()!);
  print ("Resultado: $kelvin°C = ${kelvin - 273.15}");

}


void main(){
  int opcaoSair = 0;
  do{

  print ("==== Conversor de Temperaturas ====");
  print ("1. celsius para fahrenheit");
  print ("2. fahrenheit para celsius");
  print ("3. celsius para kelvin");
  print ("4. kelvin para celsius");
  print ("5. sair");
  try {
    stdout.write("escolha uma opção: ");
    int opcao = int.parse(stdin.readLineSync()!);
    switch(opcao){
      case 1: CelsisusParafahrenheit(); break;
      case 2: FahrenheitParaCelsius(); break;
      case 3: CelsisusParafahrenheit(); break;
      case 4: KelvinParaCelsius(); break;
      case 5: exit(1);

    }
    print ("Deseja sair? 0 - sim / 1- não");
    opcaoSair = int.parse(stdin.readLineSync()!);
  }catch (e){
    print ("Digite apenas números");

  }

}while(opcaoSair != 0);

}