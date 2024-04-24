Projeto que integra hardware e software para monitorar e controlar a temperatura de ambientes em tempo real. 
Utilizando um Arduino para capturar dados de temperatura, os valores são armazenados em uma tabela MySQL com o auxílio do Python. 
Uma API desenvolvida em Node.js oferece acesso aos dados armazenados, que são exibidos em uma interface HTML dinâmica. 
Com um script JavaScript, o front-end acessa a API e exibe os dados de temperatura em uma visualização clara e intuitiva. 

Este projeto oferece uma solução eficaz para acompanhar as condições de temperatura e automatizar respostas a mudanças no ambiente, proporcionando eficiência.



COMO EXECUTAR:

  1 - Executar código do Arduino, que se localiza dentro do diretório "Arduino", no Arduino IDE.
      OBS: Para ser executado, necessita das bibliotecas.zip, que se localizam dentro do diretório "Arduino". Realizar importação destas bibliotecas no Arduino IDE.

  2 - Executar código do MySQL, que se localiza dentro do diretório "MySQL", no MySQL WorkBench
  
  3 - Executar código Python de gravação de dados, que está localizado dentro do diretório "Python"
      OBS: instalar bibliotecas no python, utilizando pip install serial mysql-connector-python pynput

  4 - Abrir código da API (localizado dentro do diretório api_clima), e executar utilizando: node server.js

  5 - Abrir HTML, localizado dentro do diretório Web, chamado index.html
