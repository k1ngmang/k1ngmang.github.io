ELM=elm
TYPST=typst

ELM_ENTRY=src/Main.elm

TYPST_ENTRY=src/main.typ
TYPST_OUTPUT=result/main.pdf

.PHONY: all site pdf clean

all: site pdf

site:
	$(ELM) make $(ELM_ENTRY)

pdf:
	$(TYPST) compile --root . $(TYPST_ENTRY) $(TYPST_OUTPUT)

clean:
	rm -f $(ELM_OUTPUT) $(TYPST_OUTPUT)
