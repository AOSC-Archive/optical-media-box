help:
	@echo "List of build targets:"
	@echo " "
	@echo "	all"
	@echo "	manual"
	@echo "	box"
	@echo "	misc"
	@echo " "
	@echo "Making a tarball:    just tar"
	@echo " "
	@echo "Creating a tag:       just tag"

all:
	just manual
	just box
	just misc



manual:
	bash tex.sh manual/manual-retro.tex
	bash tex.sh manual/manual-retro-cover.tex

box:
	convert box/retro-box.svg -resize 15000 -quality 91 _dist/box/retro-box.jpg
	du -h _dist/box/retro-box.jpg

misc:
	bash tex.sh misc/mascot-booklet.tex

tar:
	touch AOSC_OS-optical-media-box.tar.xz
	rm AOSC_OS-optical-media-box.tar.xz
	tar cvf AOSC_OS-optical-media-box.tar.xz   --exclude tex-tmp --exclude dist.tar.xz   _dist
	echo "Created tarball"
	du -h AOSC_OS-optical-media-box.tar.xz

ftp:
	proxychains -q pushgithubdistweb

tag:
    bash newtag.sh