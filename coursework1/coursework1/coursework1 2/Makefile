# 
# Rules for compiling and linking the typechecker/evaluator
#
# Type
#   make         to rebuild the executable files
#   make clean   to remove all intermediate and temporary files
#   

# Files that need to be generated from other files
DEPEND += FuncorTokens.hs FuncorGrammar.hs FuncorTypes.hs

# When "make" is invoked with no arguments, we build an executable 
#  after building everything that it depends on
all: $(DEPEND) myinterpreter

# Build an executable for Funcor interpreter
myinterpreter: $(DEPEND) Main.hs
	ghc -o myinterpreter Main.hs

# Generate ML files from a parser definition file
FuncorGrammar.hs : FuncorGrammar.y
	@rm -f funcorgrammar.hs
	happy funcorgrammar.y
	@chmod -w funcorgrammar.hs

# Generate ML files from a lexer definition file
FuncorTokens.hs : funcortokens.x
	@rm -f funcortokens.hs
	alex funcortokens.x
	@chmod -w funcortokens.hs

# Clean up the directory
clean::
	rm -rf funcortokens.hs funcorgrammar.hs *.hi *.o *.info


