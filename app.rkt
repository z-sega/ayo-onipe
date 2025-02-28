#lang racket
 
(require web-server/servlet)
(provide/contract (start (request? . -> . response?)))

(require web-server/servlet-env)

;; (-> request? response?)
(define (start request)
  (render-landing-page request))

;; (-> request? response?)
(define (render-landing-page request)
  (response/xexpr
   '(html
     (head (title "Ayo Onipe"))
     (body (h1 "Under construction")))))

(serve/servlet start
               #:launch-browser? #f
               #:quit? #f
               #:listen-ip #f
               #:port 8000
               #:servlet-path
               "/servlets/app.rkt")

