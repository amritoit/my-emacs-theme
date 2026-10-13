# my-emacs-theme
# How to use it ? put the below lines in .emacs.d/init.el file

;;Load my themes in emacs
(add-to-list 'custom-theme-load-path "~/.emacs.d/my-emacs-theme")

;; Load my default theme at startup
(load-theme 'amrit-dark-theme t)

