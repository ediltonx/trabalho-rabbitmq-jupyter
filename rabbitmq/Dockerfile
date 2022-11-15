
FROM rabbitmq:3.11
ENV SHELL /bin/bash
ENV TZ="America/Bahia"


RUN set eux; \
	rabbitmq-plugins enable --offline rabbitmq_management; \
# make sure the metrics collector is re-enabled (disabled in the base image for Prometheus-style metrics by default)
	rm -f /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; \
# grab "rabbitmqadmin" from inside the "rabbitmq_management-X.Y.Z" plugin folder
# see https://github.com/docker-library/rabbitmq/issues/207
	cp /plugins/rabbitmq_management-*/priv/www/cli/rabbitmqadmin /usr/local/bin/rabbitmqadmin; \
	[ -s /usr/local/bin/rabbitmqadmin ]; \
	chmod +x /usr/local/bin/rabbitmqadmin; \
	apt-get update; \
	apt-get install -y python3 pip wget curl; \	
	pip install pika jupyterlab;\
	rm -rf /var/lib/apt/lists/*; \
	rabbitmqadmin --version
	
RUN mkdir /atividades-inf016

ADD atividades-inf016 /atividades-inf016/

ADD start.sh /atividades-inf016/

RUN chmod 777 /atividades-inf016/start.sh ; sed -i -e 's/\r$//' /atividades-inf016/start.sh

WORKDIR /atividades-inf016/

EXPOSE 4369 5671 5672 15691 15692 25672 8888

CMD ["/bin/bash","-c","/atividades-inf016/./start.sh"]
