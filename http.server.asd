;;don't edit
(defsystem "http.server"
  :depends-on("http.server/main")
  :class :package-inferred-system
  :author "SANO Masatoshi"
  :mailto "snmsts@gmail.com"
  :entry-point "http.server/main:system-main")

(register-system-packages "lack-app-directory" '(:lack.app.directory))
