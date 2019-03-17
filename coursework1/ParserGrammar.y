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
    getStream     {TokenGetStream _}
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
    '='           {TokenEq _}
    ':'           {TokenCol _}
    '('           {TokenLParen _}
    ')'           {TokenRParen _}
    '{'           {TokenLBrckt _}
    '}'           {TokenRBrckt _}
    ','           {TokenComma _}
    var           {TokenVar _ $$}
    ';'           {TokenSemiCol _}
    if            {TokenIf _}
    else          {TokenElse _}
    then          {TokenThen _}
    fi            {TokenFi _}
    reverse       {TokenReverse _}
    '+'           {TokenAdd _}
    '*'           {TokenMult _}
    '-'           {TokenSub _}
    '/'           {TokenDiv _}
    length        {TokenLength _}
    lam           {TokenLambda _}
    arr           {TokenArr _}
    push          {TokenPush _}



%right begin
%right end
%right print
%left reverse
%left length
%left APP
%left push
%left arr
%nonassoc if
%nonassoc then
%nonassoc else
%nonassoc '(' ')' '{' '}' int true false
%left '+' '-'
%left '/' '*'
%left '<' '>'
%left ';'






%%

Exp : begin Exp end                               {TmBody $2}
    | if Exp then Exp else Exp fi                 {TmIf $2 $4 $6}
    | push int int Exp                            {TmPush $2 $3 $4}
    | getStream                                   {TmGetStream}
    | reverse Exp                                 {TmReverse $2}
    | length Exp                                  {TmLength $2}
    | Exp '+' Exp                                 {TmAdd $1 $3}
    | Exp '-' Exp                                 {TmSub $1 $3}
    | Exp '*' Exp                                 {TmMult $1 $3}
    | Exp '/' Exp                                 {TmDiv $1 $3}
    | Exp '<' Exp                                 {TmLt $1 $3}
    | Exp '>' Exp                                 {TmGt $1 $3}
    | lam '(' Exp ':' Exp ')' Exp            {TmLambda $3 $5 $7}
    | Exp Exp %prec APP                           {TmApp $1 $2}

    | int Exp                                     {TmInts $1 $2}
    | int                                         {TmInt $1}
    | var                                         {TmVar $1}
    | true                                        {TmTrue}
    | false                                       {TmFalse}
    -- | let '(' var ':' Type ')' '=' Exp         {TmLet $3 $5 $8 }
    | print Exp                                   {TmPrint $2}
    | PREFIX Exp                                  {TmPrefix $2}
    | StrmArith Exp                               {TmStrmArith $2}
    | COPY Exp                                    {TmCopy $2}
    | ACCUM Exp                                   {TmAccum $2}
    | FIB Exp                                     {TmFib $2}
    | end                                         {TmEnd}
    | '(' Exp ')'                                 { $2 }



DataType : Bool            { TyBool }
         | Int             { TyInt }
         | DataType arr DataType   { TyFun $1 $3 }




{
parseError :: [LexerToken] -> a
parseError [] = error "Unknown Parse Error"
parse (t:ts) = error ("Parse error at line:column" ++ (tokenPosn t))

-- data BoolValue = TmTrue | TmFalse
--              deriving(Show, Eq)


data DataType =TyBool | TyInt | TyFun DataType DataType
              deriving(Show, Eq)


type TyEnvironment = [ (String, Expr) ]
type Environment = [ (String, Expr) ]


data Expr = TmBody Expr | TmIf Expr Expr Expr | TmGt Expr Expr | TmLt Expr Expr
            | TmAdd Expr Expr | TmSub Expr Expr | TmMult Expr Expr | TmDiv Expr Expr
            | TmGetStream | TmReverse Expr | TmLength Expr | TmInts Int Expr | TmInt Int | TmComma  | TmTrue | TmFalse
            | TmPush Int Int Expr | TmApp Expr Expr | TmLambda Expr Expr Expr
            | TmPrint Expr | TmEnd | TmVar String
            | TmReadL Expr | TmPrefix Expr | TmStrmArith Expr
            | TmCopy Expr | TmAccum Expr | TmFib Expr
            | Cl Expr Expr Expr Environment

            deriving (Show, Eq)
}
