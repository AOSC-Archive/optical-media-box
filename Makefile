help:
	@echo "List of build targets:"
	@echo " "
	@echo "	all"
	@echo "	manual"
	@echo "	box"
	@echo " "
	@echo "Making a tarball:    make tar"
	@echo " "
	@echo "Creating a tag:       make tag"

all:
	make manual
	make box

tar:
	touch AOSC_OS-optical-media-box.tar.xz
	rm AOSC_OS-optical-media-box.tar.xz
	tar cvf AOSC_OS-optical-media-box.tar.xz   --exclude tex-tmp --exclude dist.tar.xz   _dist
	@echo "Created tarball"
	du -h AOSC_OS-optical-media-box.tar.xz

tag:
	bash .make/tag.sh

manual:
	./tex.sh manuals/manual-retro.tex
	./tex.sh manuals/manual-retro-cover.tex

box:
	convert boxes/retro-box.svg -resize 15000 -quality 91 _dist/boxes/retro-box.jpg
	du -h _dist/boxes/retro-box.jpg

ftp:
	proxychains -q pushgithubdistweb