help:
	@echo "List of build targets:"
	@echo ""
	@echo "    all"
	@echo "    manuals"
	@echo "    boxes"
	@echo "    en"
	@echo "    zh"

all:
	./tex.sh manuals/retro-en.tex
	./tex.sh manuals/retro-zh.tex

manuals:
	./tex.sh manuals/retro-en.tex
	./tex.sh manuals/retro-zh.tex

boxes:
	@echo "No box design right now."
	@echo "This is only a place holder"

en:
	./tex.sh manuals/retro-en.tex

zh:
	./tex.sh manuals/retro-zh.tex
