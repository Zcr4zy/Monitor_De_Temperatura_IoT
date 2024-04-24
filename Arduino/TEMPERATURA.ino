#include "DHT.h" 

#define DHTPIN 9
#define DHTTYPE DHT11 

DHT dht(DHTPIN, DHTTYPE);


void setup() {
  Serial.begin(9600);
  dht.begin();
}

void loop() {
  float h = dht.readHumidity();
  float t = dht.readTemperature();

  if(isnan(h) || isnan(t)){
    Serial.println("Falha ao ler do sensor DHT");  
  } else {
    Serial.println(h);
    Serial.println(t);
  }
  delay(10000); //Aguarda 30 segundos

}
