FROM kuende/elixir:1.0.2

RUN git clone https://github.com/teodor-pripoae/morannon.git /app
WORKDIR /app
RUN git checkout benchmark

ENV MIX_ENV production
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get
RUN mix compile
RUN mix compile.protocols

EXPOSE 4000

ENTRYPOINT ["elixir", "-pa", "_build/prod/consolidated", "-S", "mix"]
CMD ["serve"]

