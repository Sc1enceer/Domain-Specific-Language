{
module ParserGrammar where
import LexerTokens
}

%name parseCalc
%tokentype {LexerToken}
%error {parseError}
%token
    Bool          {TokenTypeBool _}
    Int           {TokenTypeInt _}
    int           {TokenInt _ $$}
    true          {TokenTrue _}
    false         {TokenFalse _}
    begin         {TokenBegin _}
    end           {TokenEnd _}
    stream        {TokenStream _}
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
    ':'           {TokenCol _}
    '('           {TokenLParen _}
    ')'           {TokenRParen _}
    '{'           {TokenLBrckt _}
    '}'           {TokenRBrckt _}
    ','           {TokenComma _}
    var           {TokenVar _ $$}
    ';'           {TokenSemiCol _}


%right let
%right in
%right ':'
%left ';'
%nonassoc if
%nonassoc then
%nonassoc else
%nonassoc '(' ')' '{' '}'
%right PREFIX StrmArith COPY ACCUM FIB
%left '<'
%left '>'


%%

Exp : begin Exp end                               {TmBody $2}
    | stream                                      {TmStream}
    | int                                         {TmInt $1}
    | var                                         {TmVar $1}
    | true                                        {TmTrue}
    | false                                       {TmFalse}
    | let '(' var ':' Type ')' '=' Exp            {TmLet $3 $5 $8 }
    | readLine Exp                                {TmReadL $2}
    | print Exp                                   {TmPrint $2}
    | PREFIX Exp                                  {TmPrefix $2}
    | StrmArith Exp                               {TmStrmArith $2}
    | COPY Exp                                    {TmCopy $2}
    | ACCUM Exp                                   {TmAccum $2}
    | FIB Exp                                     {TmFib $2}
    | end                                         {TmEnd}
    | '(' Exp ')'                                 { $2 }



Type : Bool                     {TyBool}
     | Int                      {TyInt}
     | var                      {TyVar}

{
parseError :: [LexerToken] -> a
parseError [] = error "Unknown Parse Error"
parse (t:ts) = error ("Parse error at line:column" ++ (tokenPosn t))


data DataType = TyInt | TyBool | TyVar
              deriving(Show, Eq)

data Line = TmLines | TmLine

type Environment = [ (String, Expr) ]

data Expr = TmBody Expr | TmStream | TmInt Int |  TmTrue | TmFalse | TmComma | TmLet String DataType Expr
            | TmPrint Expr | TmEnd | TmVar String
            | TmReadL Expr | TmPrefix Expr | TmStrmArith Expr
            | TmCopy Expr | TmAccum Expr | TmFib Expr
            | Cl Expr Environment

            deriving (Show, Eq)
}
