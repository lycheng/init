.PHONY: ubuntu-base ubuntu-fonts ubuntu-vim chsh

ubuntu-base:
	@bash ubuntu/base.sh

ubuntu-fonts:
	@bash ubuntu/fonts.sh

ubuntu-vim:
	@bash ubuntu/vim.sh

chsh:
	@chsh -s $$(which zsh)
