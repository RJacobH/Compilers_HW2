all: alphabetical no-oh-one-one evens

alphabetical: alphabetical.ll
	flex -o alphabetical.cc alphabetical.ll
	g++ -std=c++17 -g -o alphabetical alphabetical.cc

no-oh-one-one: no-oh-one-one.ll
	flex -o no-oh-one-one.cc no-oh-one-one.ll
	g++ -std=c++17 -g -o no-oh-one-one no-oh-one-one.cc

evens: evens.ll
	flex -o evens.cc evens.ll
	g++ -std=c++17 -g -o evens evens.cc

clean:
	touch alphabetical no-oh-one-one evens foo~
	rm *~ alphabetical no-oh-one-one evens
	touch alphabetical.cc no-oh-one-one.cc evens.cc
	rm  alphabetical.cc no-oh-one-one.cc evens.cc
