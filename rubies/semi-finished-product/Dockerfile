FROM __DOCKER_IMAGE__ # This is a template - cant run on its own

#RUN apt-get update && 
#    apt-get dist-upgrade -y

RUN mkdir -p /riccardo/sfp/
COPY speed-up.sh /riccardo/sfp/
# hopefully it will run on local directory
RUN /riccardo/sfp/speed-up.sh

RUN touch /riccardo-sfp.v__SFP_VERSION__