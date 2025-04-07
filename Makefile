build:
	@echo "Building blog..."
	R -q --no-save -e "setwd('/home/ian/Code/blogsite'); source('.Rprofile'); blogdown::build_site(build_rmd=TRUE)"

clean:
	@echo "Cleaning blog..."
	rm -rf public resources
	rm -rf .Rproj.user
	rm -rf .Rhistory
	rm -rf .RData
	rm -rf .knitcache
	rm -rf .cache
	rm -rf _cache

	find content/ -type f -name "*.md" -delete
	find content/ -type f -name "*.markdown" -delete
	find content/ -type f -name "*.Rmd~" -delete
	find content/ -type f -name "*.Rmarkdown~" -delete
	find content/ -type f -name "*.html~" -delete
	find content/ -type f -name "*.html" -delete
	find content/ -type d -name ".ipynb_checkpoints" -exec rm -rf {} +
	find . -type f -name "*~" -delete
	find . -type f -name "*.tmp" -delete
	find . -type f -name "*.swp" -delete

install:
	@echo "Installing blog..."
	cp -r ./public/* ~/raspian_blog/

# Rule to create a new blog post
new-post:
	@read -p "Enter the title of the new post: " title; \
	R -q --no-save -e "setwd('/home/ian/Code/blogsite'); source('.Rprofile'); blogit(title = '$$title')"



# Define the full-install rule
full-install: clean build install
	@echo "Full installation complete!"

# Declare phony targets to avoid conflicts with files of the same name
.PHONY: build clean install full-install
