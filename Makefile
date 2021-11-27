CC=pyspelling
PYTHON=python3

check:
	$(CC) -c .spellcheck.yml

doc-all:
	generate-schema-doc --config-file conf_docgen.yml schemas metrics
