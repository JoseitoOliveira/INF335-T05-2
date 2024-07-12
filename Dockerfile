# Usar a imagem base com JDK
FROM openjdk:11

# Copiar o arquivo Java para o contêiner
COPY src/trabalho05parte02/OlaUnicamp.java /

# Compilar o arquivo Java
RUN javac OlaUnicamp.java

# Comando para executar a aplicação
CMD ["java", "OlaUnicamp"]
