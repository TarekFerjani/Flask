FROM ruby:2.4.4
EXPOSE 8080
COPY Gemfile Gemfile.lock td-agent.conf go.sh ./

RUN bundle config --global frozen 1
RUN bundle install
RUN chmod +x go.sh

CMD [ "/go.sh" ]
