FROM nginx

#Install git 

RUN apt-get update
RUN apt-get install git -y

RUN mkdir -p /src

WORKDIR /src 

RUN git clone  https://github.com/VikasDJGit/dockerlab.git

RUN cp /src/dockerlab/index.html /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]



