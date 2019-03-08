{
module Main(main) where
    -- where you put any import statements that you may need
    -- for the rest of your program.

}

%wrapper "basic"

-- in here we need to specify the kind of interface
-- alex should provide to the lexer it generates.
-- basic : simplest option.
-- Alex provide a function alexScanTokens :: String -> [Token]
-- Token is a user defined type.

-- Macro definitions
$letter = [a-zA-z]
$nonletter = [~$letter\n]

-- macro is a shortcut specifying a set of
-- characters or a regular expressions
-- the name of the character set macrobegin with $ and those of regular expression macros begin with @

-- [a-zA-Z] -> square brackets[] are the union operator
  -- forming the union of a list character sets given within the bracket. a-z and A-Z denotes character ranges representing the lowercase and uppercase characters repspectively whose union is the character set $letter

-- %nonletter -> ~ denotes the complement of the character set $letter

-- Rules
-- after the definition, we specify the Rules
-- the beginning of the rules section is mared by the line token :- , the name token is purely decorative
-- alex looks only for the :- to see where rules begin

-- each rule is a regular expression followed by action

-- alex carries out the corresponding action. if more than one rule matches the current input, the longest match is preferred. if there are multiple longest -> then the rule which comes earlier in preferred
