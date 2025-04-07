# Variables
PROJECT_DIR := /home/ian/Code/blogsite
DEPLOY_DIR := $(HOME)/raspian_blog
R_CMD := R -q --no-save -e


# Rules
build:
	@echo "Building blog..."
	$(R_CMD) "setwd('$(PROJECT_DIR)'); source('.Rprofile'); blogdown::build_site(build_rmd = TRUE)"

clean:
	@echo "Cleaning blog..."
	rm -rf public resources .Rproj.user .Rhistory .RData .knitcache .cache _cache
	find content/ -type f \( -name "*.md" -o -name "*.markdown" -o -name "*.Rmd~" -o -name "*.Rmarkdown~" -o -name "*.html~" -o -name "*.html" \) -delete
	find content/ -type d -name ".ipynb_checkpoints" -exec rm -rf {} +
	find content/ -type d -name "index_files" -exec rm -rf {} +
	find . -type f \( -name "*~" -o -name "*.tmp" -o -name "*.swp" \) -delete

install:
	@echo "Installing blog..."
	rsync -rtv --delete ./public/ $(DEPLOY_DIR)/

new-post:
	@read -p "Enter the title of the new post: " title && \
	echo "Creating new post with title: $$title" && \
	$(R_CMD) "setwd('$(PROJECT_DIR)'); source('.Rprofile'); blogit(title = \"$$title\")"

serve:
	@echo "Launching local preview server..."
	$(R_CMD) "setwd('$(PROJECT_DIR)'); source('.Rprofile'); blogdown::serve_site()"

deploy:
	@echo "Deploying blog..."
	$(MAKE) quick-build
	rsync -rtv --delete ./public/ $(DEPLOY_DIR)/

quick-build:
	@echo "Incremental build..."
	$(R_CMD) "setwd('$(PROJECT_DIR)'); source('.Rprofile'); blogdown::build_site(build_rmd = FALSE)"

new-build:
	@echo "Building only new Rmd files..."
	$(R_CMD) "setwd('$(PROJECT_DIR)'); source('.Rprofile'); blogdown::build_site(build_rmd = 'newfile')"

update:
	@echo "Building new or modified Rmds and deploying site..."
	$(MAKE) new-build
	$(MAKE) quick-build
	$(MAKE) install

full-install:
	@echo "Running full build pipeline..."
	$(MAKE) clean
	$(MAKE) build
	$(MAKE) install

# Declare phony targets
.PHONY: build clean install new-post serve deploy quick-build new-build update full-install