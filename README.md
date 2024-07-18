# Aplicativo de agência de aluguel de veículos.

O Car Agency App é um aplicativo desenvolvido em Flutter que utiliza Firebase como banco de dados, BLoC como gerenciador de estado, Clean Archtecture para manter um código legível e organizado, além de injeção de dependências com GetIt. Também trás o Openstreet Map para funcionalidade de exibição de mapas. Com uma interface bonita e intuitiva que pode facilmente ser adaptado para outros modelos de agências de aluguél.

# Índice

* [Layouts do Projeto](#layouts-do-projeto)
* [Funcionalides do Projeto](#funcionalidades-do-projeto)
* [Técnicas e Tecnologias Utilizadas](#técnicas-e-tecnologias-utilizadas)
* [Abrir e rodar o projeto](#abrir-e-rodar-o-projeto)
* [Showcase da Aplicação](#showcase-da-aplicação)

# Layouts do Projeto
Aqui é possível visualizar um resumo de todas as telas do aplicativo, e também a sua navegação entre as telas.
![Sem título-2024-07-10-1101](https://github.com/user-attachments/assets/6e01e0b1-88e8-4758-bde4-6b6e8e018be4)

# Funcionalidades do Projeto

`Listar os veículos que estão salvos na base de dados do Firebase.`<br>
`Abrir o mapa dentro do card de detalhes do veículo.`<br>

# Técnicas e Tecnologias Utilizadas

`Flutter:` foi escolhido o framework Flutter para permitir construir um app híbrido.<br>
`Dart:`linguagem padrão do flutter e utilizada no projeto.<br>
`Git:`usado para versionar o código no github.<br>
`Firebase:`foi utilizado para armazenar e consultar os dados do app.<br>
`Bloc:` escolhido para realizar o gerenciamento de estados.<br>
`GetIt:` utilizado para injeção de dependências.<br>
`Clean Archtecture:` projeto feito totalmente seguindo o Clean Archtecture.<br>
`Openstreet Map:` lib de mapa Open Source, assim evitando a utilização do Google Maps Api nesse primeiro momento.<br>
`DotEnv:` lib que permite deixar API Keys ou credenciais de acesso que invisíveis no projeto, assim permitindo a publicação aberta do projeto.

# Abrir e rodar o projeto

## Pelo Android Studio.

Após baixar o projeto, você pode abrir com o Android Studio. Para isso, na tela de launcher clique em: Open an Existing Project(ou função similar). Procure o local onde o projeto está armazenado, e por fim clique em OK. O Android Studio deve executar algumas tasks do Gradle para configurar o projeto, aguarde até finalizar. Ao finalizar as task, você pode executar o App.

### OBS

A versão do Flutter utilizadas no projeto é a `3.22.0`.<br>
Para conseguir executar o projeto, será necessário criar um arquivo `.env` onde terás suas credenciais de acesso.<br>
A configuração do `Firebase` foi feita utilizando o `Firebase Tools` através de `line comands`, então caso não esteja conseguindo configurar, entre em contato que poderei montar um pequeno Guide de configuração.<br>

# Showcase da Aplicação

https://github.com/user-attachments/assets/97f957c6-f83e-4ce8-b00e-14af19011692








