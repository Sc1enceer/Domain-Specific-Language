# 
# Rules for compiling and linking the typechecker/evaluator
#
# Type
#   make         to rebuild the executable files
#   make clean   to remove all intermediate and temporary files
#   

# Files that need to be generated from other files
DEPEND += funcortokens.hs funcorgrammar.hs FuncorEval.hs

# When "make" is invoked with no arguments, we build an executable 
#  after building everything that it depends on
all: $(DEPEND) myinterpreter

# Build an executable for Funcor interpreter
myinterpreter: $(DEPEND) Main.hs
	ghc -o myinterpreter Main.hs

# Generate ML files from a parser definition file
FuncorGrammar.hs : FuncorGrammar.y
	@rm -f FuncorGrammar.hs
	happy FuncorGrammar.y
	@chmod -w FuncorGrammar.hs

# Generate ML files from a lexer definition file
FuncorTokens.hs : FuncorTokens.x
	@rm -f FuncorTokens.hs
	alex FuncorTokens.x
	@chmod -w FuncorTokens.hs

# Clean up the directory
clean::
	rm -rf funcortokens.hs funcorgrammar.hs *.hi *.o *.info myinterpreter


