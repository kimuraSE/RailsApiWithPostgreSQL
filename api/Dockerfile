FROM ruby:3.2.0
WORKDIR /api
RUN set -eux && \
    apt-get update -qq && \
    apt-get install -y \
      postgresql-client


COPY Gemfile Gemfile.lock* /api/

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

CMD ["rails", "server", "-p", "8080", "-b", "0.0.0.0"]