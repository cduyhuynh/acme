FROM elixir:1.12

RUN mkdir /acme
COPY . /acme
WORKDIR /acme

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get
EXPOSE 4000