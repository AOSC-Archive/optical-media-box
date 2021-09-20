help:
	@echo "List of build targets:"
	@echo ""
	@echo "    all"
	@echo "    manuals"
	@echo "    boxes"
	@echo "    en"
	@echo "    zh"
	@echo ""
	@echo "Making release:    make tar"

all:
	./tex.sh manuals/retro-en.tex
	./tex.sh manuals/retro-zh.tex

tar:
	touch AOSC_OS-optical-media-box.tar.xz
	rm AOSC_OS-optical-media-box.tar.xz
	tar cvf AOSC_OS-optical-media-box.tar.xz --exclude tex-tmp _dist

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
