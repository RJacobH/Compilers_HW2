all: oh-one-one no-ab calculator alphabetical no-oh-one-one evens

oh-one-one: oh-one-one.ll
	flex -o oh-one-one.cc oh-one-one.ll
	g++ -std=c++17 -g -o oh-one-one oh-one-one.cc

no-ab: no-ab.ll
	flex -o no-ab.cc no-ab.ll
	g++ -std=c++17 -g -o no-ab no-ab.cc

calculator: calculator.ll
	flex -o calculator.cc calculator.ll
	g++ -std=c++17 -g -o calculator calculator.cc

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
	touch oh-one-one no-ab calculator alphabetical no-oh-one-one evens foo~
	rm *~ oh-one-one no-ab calculator alphabetical no-oh-one-one evens
	touch oh-one-one.cc no-ab.cc calculator.cc alphabetical.cc no-oh-one-one.cc evens.cc
	rm  oh-one-one.cc no-ab.cc calculator.cc alphabetical.cc no-oh-one-one.cc evens.cc
