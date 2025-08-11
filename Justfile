set dotenv-load

help:
  just --list

plus:
  clj -X:dev clojure+.core.server/start-server

run:
  clojure -M:run-m

format_check:
  clojure -M:format -m cljfmt.main check src dev test

format:
  clojure -M:format -m cljfmt.main fix src dev test

lint:
  clojure -M:lint -m clj-kondo.main --lint .

test:
  clojure -M:test --watch

upgrade: update
update:
  clojure -Tantq outdated :upgrade true :force true

clean:
  rm -rf target
