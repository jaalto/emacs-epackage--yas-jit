(let ((dir "~/.emacs.d/epackage/packages/yasnippet/snippets"))
  (cond
   ((not (file-directory-p dir))
    (message "[ERROR] yas-jit-epackage-xactivate: Not exists %s" dir))
   ((or (not (boundp 'yas/root-directory))
	(not (stringp yas/root-directory)))
    (setq yas/root-directory dir)
    (yas/get-jit-loads))
   ((message
     (concat "[WARN] yas-jit-epackage-xactivate: Not activating, "
	     "yas/root-directory already set: %s")
     yas/root-directory))))

(provide 'yas-jit-epackage-xactivate)
