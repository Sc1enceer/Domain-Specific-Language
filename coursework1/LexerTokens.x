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
  open                      { tok (\p s -> TokenRead p)}
  end                       { tok (\p s -> TokenEnd p)}
  readLine                  { tok (\p s -> TokenReadLine p)}
  PREFIX                    { tok (\p s -> TokenPrefix p)}
  StrmArith                 { tok (\p s -> TokenStrmArith p)}
  COPY                      { tok (\p s -> TokenCopy p)}
  ACCUM                     { tok (\p s -> TokenAccum p)}
  FIB                       { tok (\p s -> TokenFIB p)}
  print                     { tok (\p s -> TokenPrint p)}
  '\n'                      { tok (\p s -> TokenEOL p)}
  let                       { tok (\p s -> TokenLet p)}
  in                        { tok (\p s -> TokenIn p)}
  \<                        { tok (\p s -> TokenLT p)}
  \>                        { tok (\p s -> TokenGT p)}
  if                        { tok (\p s -> TokenIf p) }
  then                      { tok (\p s -> TokenThen p) }
  else                      { tok (\p s -> TokenElse p) }
  --let                       { tok (\p s -> TokenLet p )}
  =                         { tok (\p s -> TokenEq p )}
-- in                        { tok (\p s -> TokenIn p )}
  \(                        { tok (\p s -> TokenLParen p) }
  \)                        { tok (\p s -> TokenRParen p) }
  \{                        { tok (\p s -> TokenLBrckt p)}
  \}                        { tok (\p s -> TokenRBrckt p)}
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
  TokenFalse          AlexPosn          |
  TokenRead           AlexPosn          |
  TokenEnd            AlexPosn          |
  TokenReadLine       AlexPosn          |
  TokenPrefix         AlexPosn          |
  TokenStrmArith      AlexPosn          |
  TokenCopy           AlexPosn          |
  TokenAccum          AlexPosn          |
  TokenFIB            AlexPosn          |
  TokenPrint          AlexPosn String   |
  TokenEOL            AlexPosn          |
  TokenLet            AlexPosn          |
  TokenIn             AlexPosn          |
  TokenLT             AlexPosn          |
  TokenGT             AlexPosn          |
  TokenIf             AlexPosn          |
  TokenThen           AlexPosn          |
  TokenElse           AlexPosn          |
  TokenEq             AlexPosn          |
  TokenLParen         AlexPosn          |
  TokenRParen         AlexPosn          |
  TokenLBrckt         AlexPosn          |
  TokenRBrckt         AlexPosn
  TokenVar            AlexPosn String
  deriving (Eq,Show)

  tokenPosn :: Token -> String
  tokenPosn (TokenTypeBool (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenTypeInt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenTrue  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenFalse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenRead  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenPrefix  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenStrArith (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenCopy (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenAccum (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenFIB  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenPrint  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenEOL (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenIn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenLT (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenGT (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenLBrckt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenRBrckt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
  tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
}
