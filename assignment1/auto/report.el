(TeX-add-style-hook
 "report"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("xcolor" "table") ("footmisc" "bottom")))
   (TeX-run-style-hooks
    "latex2e"
    "macros"
    "article"
    "art10"
    "fullpage"
    "inputenc"
    "listings"
    "caption"
    "xcolor"
    "amssymb"
    "amsmath"
    "fancyhdr"
    "lastpage"
    "parskip"
    "url"
    "float"
    "enumitem"
    "amstext"
    "fancybox"
    "stmaryrd"
    "graphicx"
    "subcaption"
    "footmisc"
    "hyperref")
   (TeX-add-symbols
    "HRule")))

