serve:
	hugo serve

build:
	make -C politiques html pdf
	cp -R \
		politiques/build/charte \
		politiques/build/charte.pdf \
		politiques/build/coussin \
		politiques/build/coussin.pdf \
		politiques/build/faecum \
		politiques/build/faecum.pdf \
		politiques/build/positions \
		politiques/build/positions.pdf \
		static/documents
