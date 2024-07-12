# Usar a imagem base com JDK
FROM openjdk:11

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o arquivo Java para o contêiner
COPY src/trabalho05parte02/OlaUnicamp.java ./trabalho05parte02/

# Compilar o arquivo Java
RUN javac trabalho05parte02/OlaUnicamp.java -d bin/

# Definir o diretório de trabalho para bin
WORKDIR /app/bin

# Comando para executar a aplicação
CMD ["java", "trabalho05parte02.OlaUnicamp"]
