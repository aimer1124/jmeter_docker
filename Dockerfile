FROM		yjshi/jmeter_docker

ENV		JMETER_HOME	/opt/jmeter
RUN		mkdir -p ${JMETER_HOME}

# copy test scripts to docker
COPY		Demo.jmx /opt/jmeter	

WORKDIR		${JMETER_HOME}
