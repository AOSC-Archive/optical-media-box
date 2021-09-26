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
	make manual-en
	make manual-zh

manual-en:
	./tex.sh manuals/manual-retro-en.tex

manual-zh:
	./tex.sh manuals/manual-retro-zh.tex

box:
	convert boxes/retro-box.svg -resize 15000 -quality 91 _dist/boxes/retro-box.jpg
	du -h _dist/boxes/retro-box.jpg

# box-legacy:
# 	# ./tex.sh boxes/box-retro-en.tex
# 	# ./tex.sh boxes/box-retro-side-en.tex
# 	# pdfunite _dist/boxes/box-retro-en.pdf _dist/boxes/box-retro-side-en.pdf _dist/boxes/box-retro-all-en.pdf
# 	# gs -sDEVICE=jpeg -o _dist/boxes/box-retro-all-en-%d.jpg -r600 _dist/boxes/box-retro-all-en.pdf

