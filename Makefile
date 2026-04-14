.PHONY: build clean

SKILLS_DIR := skills
DIST_DIR := dist
SKILL_DIRS := $(wildcard $(SKILLS_DIR)/*)

build: $(DIST_DIR)
	@for skill_dir in $(SKILL_DIRS); do \
		skill_name=$$(basename $$skill_dir); \
		echo "Building $$skill_name.skill..."; \
		(cd $$skill_dir && zip -r -q ../../$(DIST_DIR)/$$skill_name.skill .); \
	done
	@echo "Done. Skills built in $(DIST_DIR)/"

$(DIST_DIR):
	@mkdir -p $(DIST_DIR)

clean:
	@rm -rf $(DIST_DIR)
	@echo "Cleaned $(DIST_DIR)/"
