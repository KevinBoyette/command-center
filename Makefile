
.PHONY: all

all: setup tools

setup:
	@ln -fvs ~/.emacs.d/etc/bashrc ~/.bashrc
	@ln -fvs ~/.emacs.d/etc/bashrc ~/.profile
	@ln -fvs ~/.emacs.d/etc/gitconfig ~/.gitconfig
	@ln -fvs ~/.emacs.d/etc/gitignore_global ~/.gitignore_global
	@ln -fvs ~/.emacs.d/etc/lein ~/.lein
	@ln -fvs ~/.emacs.d/init.el ~/.emacs
	@ln -fvs ~/.emacs.d/etc/tmux.conf  ~/.tmux.conf
	@ln -fvs ~/.emacs.d/etc/cljstyle  ~/.cljstyle

tools:
	@cd ~/.emacs.d/ && emacs -q --batch --no-init-file -l ./deps.el
