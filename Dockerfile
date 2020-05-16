FROM node

RUN npm install -g gatsby-cli
RUN gatsby new blog https://github.com/santy8a/blog.git
RUN cd blog
RUN npm install