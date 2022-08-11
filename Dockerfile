FROM ruby:3.1.2-slim

RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
  build-essential \
  gnupg2 \
  libpq-dev \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /myapp

ENV LANG=C.UTF-8 \
  BUNDLE_JOBS=4 \
  BUNDLE_RETRY=3 \
  BUNDLE_DEPLOYMENT="true" \
  BUNDLE_FROZEN="true" \
  BUNDLE_WITHOUT="development:test" \
  USERNAME=foo

RUN adduser ${USERNAME} && \
  mkdir -p tmp/cache && \
  chown $USERNAME:$USERNAME tmp/cache

USER ${USERNAME}

COPY Gemfile* ./

RUN bundle install

COPY --chown=foo . ./

# Precompile assets
# SECRET_KEY_BASE or RAILS_MASTER_KEY is required in production, but we don't
# want real secrets in the image or image history. The real secret is passed in
# at run time
ARG SECRET_KEY_BASE=fakekeyforassets
RUN RAILS_ENV=production bundle exec rails assets:precompile

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
