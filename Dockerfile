FROM rabbitmq:3-management

RUN apt-get update
RUN apt-get install -y wget python


# rabbitmqadmin
RUN wget https://raw.githubusercontent.com/rabbitmq/rabbitmq-management/rabbitmq_v3_6_14/bin/rabbitmqadmin -O rabbitmqadmin
RUN chmod +x rabbitmqadmin && mv rabbitmqadmin /usr/bin

