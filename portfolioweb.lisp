(defparameter *server* (make-instance 'tbnl:easy-acceptor
                                      :port 1738
                                      :address "0.0.0.0"))

(defun start ()
  (tbnl:start *server*))

(defun stop()
  (tbnl:stop *server*))

(defparameter *css*
  '((body
     :background-color "#f0f2f5;"
     :font-family "monospace;")
    (.nav-wrapper
     :background-color "blue;"
     :padding "15px;")
    (.nav-wrapper
     (a
      :color "#fff"
      :padding "15px;"
      :text-decoration "none;"
      :font-size "1rem;"))
    (.nav-wrapper
     ((:and a :hover)
      :text-decoration "underline;"
      :cursor "pointer;"))
    (.irc-server-title
     :font-size "1.05rem;")
    (.irc-name
     :font-size "1rem;")
    (.xmpp-name
     :font-size "1rem;")
    (.about-content
     :font-size "1.1rem;")
    (.news-content-wrapper
     :position "relative;"
     :width "450px;"
     :background-color "#fff;"
     :left "45vw;"
     :padding "10px 15px;"
     )
    (.news-title
     :text-align "center;")))

(tbnl:define-easy-handler (landing :uri "/")
  ()
  (spinneret:with-html-string
  (:html
   (:head
    (:style
     (apply #'lass:compile-and-write *css*)))
   (:body
    (:div :class "whole-wrapper"
          (:div :class "nav-wrapper"
                (:a :class "home-link" :href "/"
                    "Home")
                (:a :class "about-link" :href "/about"
                    "About")
                (:a :class "contact-link" :href "/contact"
                    "Contact")
                (:a :class "blog-link" :href "/blog"
                    "Blog"))
          (:div :class "landing-content"
                (:h1 :class "landing-title" "Welcome to Christopher's Blog")
                (:p :class "landing-subtitle" "A techie, through and through."))
          (:div :class "news-content-wrapper"
                (:h1 :class "news-title" "----News & Updates----")
                (:p :class "news-content" "> Site is still under construction, but will have it's first blog by Monday.")
                ))))))

(tbnl:define-easy-handler (about :uri "/about")
    ()
  (spinneret:with-html-string
    (:html
     (:head
      (:style
       (apply #'lass:compile-and-write *css*)))
     (:body
      (:div :class "whole-wrapper"
            (:div :class "nav-wrapper"
                  (:a :class "home-link" :href "/"
                      "Home")
                  (:a :class "about-link" :href "/about"
                      "About")
                  (:a :class "/contact-link" :href "/contact"
                      "Contact")
                  (:a :class "blog-link" :href "/blog"
                      "Blog"))
            (:div :class "about-content-wrapper"
                  (:h1 :class "about-title" "About")
                  (:p :class "about-content" "This is a basic webpage to display information about Christopher West as a developer. This site is written purely in Common Lisp as both for fun and entertainment; but as well as to showcase a few of my skills to any potential employer. Thank you for visiting my page!")
                  ))))))

(tbnl:define-easy-handler (contact :uri "/contact")
    ()
  (spinneret:with-html-string
    (:html
     (:head
      (:style
       (apply #'lass:compile-and-write *css*)))
     (:body
      (:head
       (:div :class "whole-wrapper"
             (:div :class "nav-wrapper"
                   (:a :class "home-link" :href "/"
                       "Home")
                   (:a :class "about-link" :href "/about"
                       "About")
                   (:a :class "contact-link" :href "/contact"
                       "Contact")
                   (:a :class "blog-link" :href "/blog"
                       "Blog"))
             (:div :class "contact-content-wrapper"
                   (:h1 :class "irc-title" "IRC")
                   (:h3 :class "irc-server-title" "irc.libera.chat")
                   (:p :class "irc-name" "sweatshirt")
                   (:br)(:br)
                   (:h1 :class "xmpp-title" "XMPP")
                   (:p :class "xmpp-name" "sweatshirt@xmpp.jp"))))))))

(tbnl:define-easy-handler (blog :uri "/blog")
    ()
  (spinneret:with-html-string
    (:html
     (:head
      (:style
       (apply #'lass:compile-and-write *css*)))
     (:body
      (:div :class "whole-wrapper"
            (:div :class "nav-wrapper"
                  (:a :class "home-link" :href "/"
                      "Home")
                  (:a :class "about-link" :href "/about"
                      "About")
                  (:a :class "contact-link" :href "/contact"
                      "Contact")
                  (:a :class "blog-link" :href "/blog"
                      "Blog")))))))
