# Especifica a imagem de origem
FROM ubuntu

# Instala os pacotes
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install -y \ 
	apache2 \ 
	&& rm -rf /var/lib/apt/lists/*
RUN echo "<html><body><p>Atividade Individual - Leonardo Seivald</p></body></html>" >> /var/www/html/atividade.html

# Expõe a porta do apache
EXPOSE 80
 
# Executa o apache
CMD ["usr/sbin/apache2ctl", "-DFOREGROUND"]
