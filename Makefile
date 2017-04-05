
all:
	rm -Rf ./output; mkdir ./output;
	cd ./scanner; make
	cd ./controller; make
	cd ./arbiter; make

	#copy the results up to our output
	cp -a ./scanner/output/*.tar ./output; cp -a ./controller/output/*.tar ./output; cp -a ./arbiter/output/*.tar ./output

travis:
	rm -Rf ./output; mkdir ./output;
	cd ./scanner; make travis
	cd ./controller; make travis
	cd ./arbiter; make travis
