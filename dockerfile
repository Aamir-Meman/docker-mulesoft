FROM java:openjdk-8-jdk
MAINTAINER aamirmemon2292@gmail.com
# Environment Variables 
ENV MULE_HOME /opt/mule
# Get mule standalone from Mulesoft and extract
RUN cd ~ && wget https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/3.8.0/mule-standalone-3.8.0.tar.gz && echo "d9279b3f0373587715613341a16483f3 mule-standalone-3.8.0.tar.gz" | md5sum -c
RUN cd /opt && tar xvzf ~/mule-standalone-3.8.0.tar.gz 

RUN rm ~/mule-standalone-3.8.0.tar.gz 
RUN ln -s /opt/mule-standalone-3.8.0 /opt/mule

# Define working directory.
WORKDIR /opt/mule

CMD [ "/opt/mule/bin/mule" ]