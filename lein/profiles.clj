{
  ;; inf-clojure support
  :jvm-opts ["-Dclojure.server.repl={:port 5555 :accept clojure.core.server/repl}"]
 ;; for all that repl goodness
 :user { :dependencies [[org.clojure/tools.namespace "0.3.0-alpha4"]
                        [clj-http "3.9.0"]
                        [eftest "0.5.1"]]
        :plugins [[lein-cljfmt "0.4.1" :exclusions [org.clojure/clojure]]
                  [lein-cloverage "1.0.6" :exclusions [org.clojure/clojure]]
                  [lein-ancient "0.6.15", :exclusions [org.clojure/clojure]]]}
}
