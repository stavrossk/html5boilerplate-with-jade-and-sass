JADE = $(shell find *.jade)
HTML = $(JADE:.jade=.html)

all: $(HTML)

%.html: %.jade
	jade < $< --out $< --path $< --pretty > $@

clean:
	rm -f $(HTML)

.PHONY: clean