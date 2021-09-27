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
	@echo "Pushing a tag:       make pushtag"

all:
	make manual
	make box

tar:
	touch AOSC_OS-optical-media-box.tar.xz
	rm AOSC_OS-optical-media-box.tar.xz
	tar cvf AOSC_OS-optical-media-box.tar.xz   --exclude tex-tmp --exclude dist.tar.xz   _dist
	@echo "Created tarvall"
	du -h AOSC_OS-optical-media-box.tar.xz

pushtag:
	@echo "[WARNING] This action could push unwanted refs."
	@echo "Pushing tags..."
	git push origin '*'

manual:
	./tex.sh manuals/manual-retro.tex
	# ./tex.sh manuals/manual-retro-cover.tex

box:
	convert boxes/retro-box.svg -resize 15000 -quality 91 _dist/boxes/retro-box.jpg
	du -h _dist/boxes/retro-box.jpg
