FROM rabbitmq:3-management

RUN apt-get update
RUN apt-get install -y wget python


# enable rabbitmq_delayed_message_exchange plugin
RUN wget https://bintray.com/rabbitmq/community-plugins/download_file?file_path=rabbitmq_delayed_message_exchange-0.0.1.ez -O rabbitmq_delayed_message_exchange-0.0.1.ez
RUN mv rabbitmq_delayed_message_exchange-0.0.1.ez /usr/lib/rabbitmq/lib/rabbitmq_server*/plugins
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

# rabbitmqadmin
RUN wget https://raw.githubusercontent.com/rabbitmq/rabbitmq-management/rabbitmq_v3_6_14/bin/rabbitmqadmin -O rabbitmqadmin
RUN chmod +x rabbitmqadmin && mv rabbitmqadmin /usr/bin

