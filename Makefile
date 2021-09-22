help:
	@echo "List of build targets:"
	@echo " "
	@echo "	all"
	@echo "	manual"
	@echo "	box"
	@echo "	en"
	@echo "	zh"
	@echo " "
	@echo "Making a tarball:    make tar"
	@echo " "
	@echo "Pushing a tag:       make push"

all:
	make manual
	make box

tar:
	touch AOSC_OS-optical-media-box.tar.xz
	rm AOSC_OS-optical-media-box.tar.xz
	tar cvf AOSC_OS-optical-media-box.tar.xz --exclude tex-tmp _dist

push:
	@echo "[WARNING] This action could push unwanted refs."
	@echo "Pushing tags..."
	git push origin '*'

manual:
	./tex.sh manuals/manual-retro-en.tex
	# ./tex.sh manuals/manual-retro-zh.tex

box:
	./tex.sh boxes/box-retro-en.tex
	./tex.sh boxes/box-retro-side-en.tex
	pdfunite _dist/boxes/box-retro-en.pdf _dist/boxes/box-retro-side-en.pdf _dist/boxes/box-retro-all-en.pdf
	# gs -sDEVICE=jpeg -o _dist/boxes/box-retro-all-en-%d.jpg -r600 _dist/boxes/box-retro-all-en.pdf

# en:
# 	./tex.sh manuals/manual-retro-en.tex
# 	./tex.sh boxes/box-retro-en.tex

# zh:
# 	./tex.sh manuals/manual-retro-zh.tex
