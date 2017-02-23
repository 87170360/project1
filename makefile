CXX = g++
OBJECTS = main.o beaner.o
DESTDIR_TARGET = m


all: $(DESTDIR_TARGET)
	ctags -R

$(DESTDIR_TARGET): $(OBJECTS)
	$(CXX) -o $(DESTDIR_TARGET) $(OBJECTS)

.cc.o:
	 $(CXX) -c -o $@ $<

clean:
	 rm -rf $(DESTDIR_TARGET) *.o

r:	$(DESTDIR_TARGET)
	./$(DESTDIR_TARGET)
