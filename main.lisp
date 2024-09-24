(uiop/package:define-package :http.server/main (:nicknames) (:use :cl)
                             (:shadow) (:import-from :lack.app.directory)
                             (:import-from :clack) (:export :system-main)
                             (:intern))
(in-package :http.server/main)
;;don't edit above

(defun system-main (&optional (args (uiop:command-line-arguments)))
  (clack:clackup
   (make-instance 'lack.app.directory:lack-app-directory
                  :root #P"./")
   :port (or (ignore-errors (parse-integer (first args))) 5000)
   :address (or (second args) "127.0.0.1")
   :use-thread nil))
