help:
	@echo "List of build targets:"
	@echo " "
	@echo "	all"
	@echo "	manuals"
	@echo "	boxes"
	@echo "	en"
	@echo "	zh"
	@echo " "
	@echo "Making a tarball:    make tar"
	@echo " "
	@echo "Pushing a tag:       make push"

all:
	./tex.sh manuals/retro-en.tex
	./tex.sh manuals/retro-zh.tex

tar:
	touch AOSC_OS-optical-media-box.tar.xz
	rm AOSC_OS-optical-media-box.tar.xz
	tar cvf AOSC_OS-optical-media-box.tar.xz --exclude tex-tmp _dist

push:
	@echo "[WARNING] This action could push unwanted refs."
	@echo "Pushing tags..."
	git push origin '*'


manuals:
	./tex.sh manuals/retro-en.tex
	./tex.sh manuals/retro-zh.tex

boxes:
	./tex.sh boxes/box-retro-en.tex

en:
	./tex.sh manuals/retro-en.tex
	./tex.sh boxes/box-retro-en.tex

zh:
	./tex.sh manuals/retro-zh.tex
