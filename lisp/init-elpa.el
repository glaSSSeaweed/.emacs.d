(setq package-archives '(
    ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/") 
    ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
    ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
;;package
(setq package-check-signature nil)
(require 'package)
(unless (bound-and-true-p package--initialized) 
    (package-initialize))
(unless package-archive-contents
  (package-refresh-contents))
;;use-package
(unless (package-installed-p 'use-package) 
    (package-refresh-contents) 
    (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-always-demand nil) 
  (setq use-package-expand-minimally t) 
  (setq use-package-verbose t))

(provide 'init-elpa)
