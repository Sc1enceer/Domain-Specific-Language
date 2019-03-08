{
  module parser where
  import lexer
}

%name parseCalc
%tokenType {Token}
%error {parseError}
%token
    Bool          {TokenTypeBool _}
    Int           {TokenTypeInt _}
    int           {TokenInt _ $$}
    true          {TokenTrue _}
    false         {TokenFalse _}
    open          {TokenRead _}
    end           {TokenEnd _}
    readLine      {TokenReadLine _}
    PREFIX        {TokenPrefix _}
    StrmArith     {TokenStrmArith _}
    COPY          {TokenCopy _}
    ACCUM         {TokenAccum _}
    FIB           {TokenFIB _}
    print         {TokenPrint _}
    '\n'          {TokenEOL _}
    let           {TokenLet _}
    in            {TokenIn _}
    '<'           {TokenLT _}
    '>'           {TokenGT _}
    if            {TokenIf _}
    then          {TokenThen _}
    else          {TokenElse _}
    '='           {TokenEq _}
    '('           {TokenLParen _}
    ')'           {TokenRParen _}
    '{'           {TokenLBrckt _}
    '}'           {TokenRBrckt _}

-- define associativity here
%right let
%right in
%nonassoc if
%nonassoc then
%nonassoc else
%nonassoc int true false var '(' ')' '{' '}'
%left '<'
%left '>'

-- define rules here
Exp : int                                         {TmInt $1}
    | var                                         {TmVar $1}
    | true                                        {TmTrue}
    | false                                       {TmFalse}
    | Exp '<' Exp                                 {TmCompare $1 $3}
    | if Exp then Exp else Exp                    {TmIf $2 $4 $6}
    | let '(' var ':' Type ')' '=' Exp in Exp     { TmLet $3 $5 $8 $10 }


Type : Bool               {TyBool}
     | Int                {TyInt}

{
parseError :: [ToyToken] -> a
parseError [] = error "Unknown Parse Error"
parse (t:ts) = error ("Parse error at line:column" ++ (tokenPosn t))

data Type = TyInt | TyBool
    deriving(Show, Eq)

type Environment = [ (String, Expr) ]

data Expr = TmInt Int | TmTrue | TmFalse


}
