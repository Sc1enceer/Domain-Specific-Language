{
  module LexerTokens where
}

%wrapper "posn"
$digit = 0-9
-- digits
$alpha = [a-zA-Z]
-- alphabetic characters

-- tokens start from here

tokens :-
-- ignore the white space here
$white+       ;
  Bool                      { tok (\p s -> TokenTypeBool p)}
  Int                       { tok (\p s -> TokenTypeInt p)}
  $digit+                   { tok (\p s -> TokenInt p (read s)) }
  true                      { tok (\p s -> TokenTrue p)}
  false                     { tok (\p s -> TokenFalse p)}
  begin                     { tok (\p s -> TokenBegin p) }
  end                       { tok (\p s -> TokenEnd p)}
  getStream                 { tok (\p s -> TokenGetStream p)}
  print                     { tok (\p s -> TokenPrint p)}
  '\n'                      { tok (\p s -> TokenEOL p)}
  let                       { tok (\p s -> TokenLet p)}
  in                        { tok (\p s -> TokenIn p)}
  \<                        { tok (\p s -> TokenLT p)}
  \>                        { tok (\p s -> TokenGT p)}
   :                        { tok (\p s -> TokenCol p)}
  let                       { tok (\p s -> TokenLet p )}
  =                         { tok (\p s -> TokenEq p )}
  \(                        { tok (\p s -> TokenLParen p) }
  \)                        { tok (\p s -> TokenRParen p) }
  \{                        { tok (\p s -> TokenLBrckt p)}
  \}                        { tok (\p s -> TokenRBrckt p)}
  \,                        { tok (\p s -> TokenComma p)}
  \;                        { tok (\p s -> TokenSemiCol p)}
  if                        { tok (\p s -> TokenIf p)}
  else                      { tok (\p s -> TokenElse p)}
  then                      { tok (\p s -> TokenThen p)}
  fi                        { tok (\p s -> TokenFi p)}
  reverse                   { tok (\p s -> TokenReverse p)}
  \+                        { tok (\p s -> TokenAdd p)}
  \*                        { tok (\p s -> TokenMult p)}
  \-                        { tok (\p s -> TokenSub p)}
  \/                        { tok (\p s -> TokenDiv p)}
  length                    { tok (\p s -> TokenLength p)}
  \\                        { tok (\p s -> TokenLambda p) }
  "->"                      { tok (\p s -> TokenArr p) }
  \++                       { tok (\p s -> TokenMerge p)}
  push                      { tok (\p s -> TokenPush p) }
  head                      { tok (\p s -> TokenHead p) }
  last                      { tok (\p s -> TokenLast p) }
  duplicate                 { tok (\p s -> TokenDuplicate p) }
  splitAt                   { tok (\p s -> TokenSplitAt p) }
  map                       { tok (\p s -> TokenMap p) }  
  listsArith                { tok (\p s -> TokenListsArith p) }
  $alpha [$alpha $digit \_ \’]*   { tok (\p s -> TokenVar p s) }



-- Helper function
{
tok f p s = f p s

-- the token type
data LexerToken =
  TokenTypeBool       AlexPosn          |
  TokenTypeInt        AlexPosn          |
  TokenInt            AlexPosn Int      |
  TokenTrue           AlexPosn          |
  TokenListsArith     AlexPosn          |
  TokenFalse          AlexPosn          |
  TokenBegin          AlexPosn          |
  TokenEnd            AlexPosn          |
  TokenGetStream      AlexPosn          |
  TokenPrint          AlexPosn          |
  TokenEOL            AlexPosn          |
  TokenLet            AlexPosn          |
  TokenIn             AlexPosn          |
  TokenLT             AlexPosn          |
  TokenGT             AlexPosn          |
  TokenVar            AlexPosn String   |
  TokenCol            AlexPosn          |
  TokenIf             AlexPosn          |
  TokenThen           AlexPosn          |
  TokenElse           AlexPosn          |
  TokenEq             AlexPosn          |
  TokenLParen         AlexPosn          |
  TokenRParen         AlexPosn          |
  TokenLBrckt         AlexPosn          |
  TokenRBrckt         AlexPosn          |
  TokenComma          AlexPosn          |
  TokenSemiCol        AlexPosn          |
  TokenFi             AlexPosn          |
  TokenReverse        AlexPosn          |
  TokenAdd            AlexPosn          |
  TokenMult           AlexPosn          |
  TokenSub            AlexPosn          |
  TokenDiv            AlexPosn          |
  TokenLength         AlexPosn          |
  TokenLambda         AlexPosn          |
  TokenArr            AlexPosn          |
  TokenPush           AlexPosn          |
  TokenDuplicate      AlexPosn          |
  TokenMerge          AlexPosn          |
  TokenSplitAt        AlexPosn          |
  TokenHead           AlexPosn          |
  TokenLast           AlexPosn          |
  TokenMap            AlexPosn          
  deriving (Eq,Show)

tokenPosn :: LexerToken -> String
tokenPosn (TokenTypeBool (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeInt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBegin  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEnd  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGetStream  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPrint  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEOL (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLT (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGT (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCol (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLBrckt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRBrckt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSemiCol (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFi (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReverse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAdd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMult (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSub  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLength (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLambda (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenArr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPush (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMerge (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDuplicate (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSplitAt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenHead (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLast (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMap (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenListsArith (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}
