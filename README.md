# flutter_default_state_manager

Treinamento de gerência de estado com os recursos padrões do Flutter  - setState, ChangeNotifier,ValueNotifier e Streams (Bloc Pattern)

# setState 

Excelente para aplicações pequenas e com componentes simples,
entretanto caso um Widget filho queira buildar um Widget pai
começa a ter uma complexidade maior tornando o código mais complicado do que deveria, além de que ele builda a tela inteira e embora não seja tão perceptícel a olho nú, isso pode acarretar em requisições e processamento desnecessários

# valueNotififier 

É uma classe disponível do Flutter que funciona por reatividade.
Basicamente toda vez que um valor dela é alterado, ela manda rebuildar um Widget específico dentro dela
* Com setState eu buildava a tela inteira, já com o valueNotifier é possível buildar apenas uma parte da minha tela 
onde o elemento está envolvido.

# changeNotififier 


Observables e listeners 

# Bloc

- O conceito é a separação de telas e regras de negócio
- É semelhante ao ChangeNotifier, só que o Bloc utiliza Streams

