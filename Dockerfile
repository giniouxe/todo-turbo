FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y postgresql-client && gem install bundler

# Create the user
ARG USERNAME=todo
RUN groupadd --gid 1000 $USERNAME \
    && useradd --uid 1000 --gid 1000 -m $USERNAME \
    && mkdir /etc/sudoers.d \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

ADD . /docker-todo
WORKDIR /docker-todo
EXPOSE 3000
CMD ["bash"]

USER $USERNAME
