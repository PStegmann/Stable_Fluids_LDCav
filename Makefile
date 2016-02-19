CXX=gcc
CXXFLAGS= -c -O2 -funroll-loops -Wall 
LDFLAGS= -L/usr/lib 
LIBS= -lglut -lGL -lGLU 
SOURCES=demo.c solver.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=Stable_Fluids_Demo

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(LDFLAGS) $(OBJECTS) $(LIBS) -o $@

.c.o:
	$(CXX) $(CXXFLAGS) $< -o $@
