FROM ruby:2.5.8-alpine3.12

# Set a variable for the install location.
ARG RAILS_ROOT=/usr/src/app
ARG PACKAGES="tzdata curl postgresql-client sqlite-libs yarn nodejs bash"

ENV RAILS_ENV=production
ENV BUNDLE_APP_CONFIG="$RAILS_ROOT/.bundle"

WORKDIR $RAILS_ROOT

RUN apk update \
    && apk upgrade \
    && apk add --update --no-cache $PACKAGES


COPY . $RAILS_ROOT

# Expose port 80.
EXPOSE 80

# Sets the footer of greenlight application with current build version
ARG version_code
ENV VERSION_CODE=$version_code

# Start the application.
CMD ["bin/start"]
