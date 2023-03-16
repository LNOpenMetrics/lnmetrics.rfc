CC=pyspelling
PYTHON=python3

check:
	$(CC) -c .spellcheck.yml

doc-all:
	# generate-schema-doc --config-file [yml configuration file] [json files / containing directory] [output directory] 
	generate-schema-doc --config-file conf_docgen.yml schemas metrics

clean:
	rm -rf *.dic schemas/*schemas*
