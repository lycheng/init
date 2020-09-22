.PHONY: ubuntu-base ubuntu-fonts ubuntu-vim

ubuntu-base:
	@bash ubuntu/base.sh

ubuntu-fonts:
	@bash ubuntu/fonts.sh

ubuntu-vim:
	@bash ubuntu/vim.sh
