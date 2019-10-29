(uiop/package:define-package :http.server/main (:nicknames) (:use :cl)
                             (:shadow) (:import-from :lack)
                             (:import-from :clack) (:export :system-main)
                             (:intern))
(in-package :http.server/main)
;;don't edit above

(defun system-main (&optional (args (uiop:command-line-arguments)))
  (clack:clackup
   (lack:builder
    (:static :path "/"
     :root #P"./")
    (lambda (env)
      '(200 (:content-type "text/plain") ("Hello, World"))))
   :port (or (ignore-errors(parse-integer (first args))) 5000))
  (loop (sleep 1)))
