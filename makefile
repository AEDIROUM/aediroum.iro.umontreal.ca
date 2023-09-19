serve:
	hugo serve

build:
	make -C politiques html
	cp -R \
		politiques/build/charte \
		politiques/build/coussin \
		politiques/build/faecum \
		politiques/build/positions \
		static/documents
