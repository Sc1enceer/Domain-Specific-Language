{
  module ParserGrammar where
  import LexerTokens
}

%name parseCalc
%tokenType { LexerToken }
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
    var           {TokenVar _ $$}

-- define associativity here
%right let
%right in
%nonassoc if
%nonassoc then
%nonassoc else
%nonassoc int true false var '(' ')' '{' '}'
%nonassoc PREFIX StrmArith COPY ACCUM FIB
%left '<'
%left '>'


%%
-- define rules here
Exp : int                                         {TmInt $1}
    | var                                         {TmVar $1}
    | true                                        {TmTrue}
    | false                                       {TmFalse}
    | Exp '<' Exp                                 {TmCompare $1 $3}
    | if Exp then Exp else Exp                    {TmIf $2 $4 $6}
    -- | let '(' var ':' Type ')' '=' Exp in Exp     {TmLet $3 $5 $8 $10 }
    | readLine Exp                                {TmReadL $2}
    | print Exp                                   {TmPrint $2}
    | PREFIX Exp                                  {TmPrefix $2}
    | StrmArith Exp                               {TmStrmArith $2}
    | COPY Exp                                    {TmCopy $2}
    | ACCUM Exp                                   {TmAccum $2}
    | FIB Exp                                     {TmFib $2}
    | end                                         {TmEnd}
    | '(' Exp ')'                                 { $2 }


-- Type : Bool               {TyBool}
--      | Int                {TyInt}


{
parseError :: [ToyToken] -> a
parseError [] = error "Unknown Parse Error"
parse (t:ts) = error ("Parse error at line:column" ++ (tokenPosn t))

-- data dataType = TyInt | TyBool
--    deriving(Show, Eq)

type Environment = [ (String, Expr) ]

data Expr = TmInt Int Expr | TmTrue | TmFalse | TmCompare Expr Expr
            | TmIf Expr Expr Expr | TmLet String dataType Expr Expr
            | TmReadL Expr | TmPrefix Expr | TmStrmArith Expr
            | TmCopy Expr | TmAccum Expr | TmFib Expr | Cl String dataType Expr Environment

      deriving (Show, Eq)
}
