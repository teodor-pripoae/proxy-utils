FROM arunma/scala-sbt-docker

# install wget
#RUN apt-get install -y wget

## install Scala 2.11.5
#ENV SCALA_VERSION 2.11.6
#ENV SCALA_DEB_FILE_NAME=scala-$SCALA_VERSION.deb

#RUN wget --quiet http://www.scala-lang.org/files/archive/$SCALA_DEB_FILE_NAME
#RUN dpkg -i $SCALA_DEB_FILE_NAME
#RUN rm -f $SCALA_DEB_FILE_NAME

## install sbt 0.13.7
#ENV SBT_VERSION 0.13.7
#ENV SBT_DEB_FILE_NAME=sbt-$SBT_VERSION.deb

#RUN wget --quiet https://dl.bintray.com/sbt/debian/$SBT_DEB_FILE_NAME
#RUN dpkg -i $SBT_DEB_FILE_NAME
#RUN rm -f $SBT_DEB_FILE_NAME<F37>


run git clone https://github.com/hadesgames/tonic.git /app

WORKDIR /app

RUN ["sbt", "project tonic", "compile", "assembly"]
RUN mv tonic/target/scala-2.11/tonic-assembly-0.1-SNAPSHOT.jar ./tonic.jar

EXPOSE 4000

ENTRYPOINT ["java", "-jar", "tonic.jar"]
CMD ["4000"]
