Render C++ Core Guidelines using remark, pandoc and pdflatex
------------------------------------------------------------

To get started quickly just run

    git submodule init && git submodule init update
    run.sh

inside the working copy.

If you're behind a proxy create/edit `local_env` to contain your 

    export http_proxy=http://<ip:port>
    export https_proxy=https://<ip:port>

To make things complicated you can also modify `fontoptions.tex` and `convert2pdf`
to adjust the result. But be prepared to fight against XeTex, LaTeX and pandoc.

Good luck!

