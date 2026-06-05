.PHONY: help
help: ## Prints each target and its associated help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# NOTE: keep the terminal window focused and in the shape you want captured.
# macOS uses screencapture/osascript; Linux uses scrot or gnome-screenshot.
gen-gallery: ## Generate the gallery of images
	@echo "Generating colorscheme screenshots..."
	@mkdir -p ./gallery/outputs
	@nvim --clean \
		-c "execute 'set runtimepath^=' . fnameescape(getcwd())" \
		-c "cd ./gallery" \
		-c "try | execute 'luafile ./generate.lua' | catch | cquit | endtry" \
		-c "echo ''" \
		-c "qa!"
	@echo "Screenshots generated in ./gallery/outputs/"
