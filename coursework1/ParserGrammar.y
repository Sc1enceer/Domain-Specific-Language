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
    '++'          {TokenMerge _}
    splitAt       {TokenSplitAt _}
    duplicate     {TokenDuplicate _}
    head          {TokenHead _}
    last          {TokenLast _}
    take          {TokenTake _}
    sum           {TokenSum _}
    map           {TokenMap _}
    listsArith     {TokenListsArith _}

%right begin
%right end
%right print
%right listsArith
%left map
%left head
%right last
%left sum
%left take

%left splitAt
%right length
%right duplicate
%left reverse
%right let
%left push
%left arr
%nonassoc if
%nonassoc then
%nonassoc else
%nonassoc '(' ')' '{' '}' int true false var
%left '++'
%left '+' '-'
%left '/' '*'
%left '<' '>'
%left ';'
%right ','
%left APP






%%

Exp : begin Exp end                               {TmBody $2}
    | if Exp then Exp else Exp fi                 {TmIf $2 $4 $6}
    | push int int Exp                            {TmPush $2 $3 $4}
    | getStream                                   {TmGetStream}
    | duplicate Exp                               {TmDuplicate $2}
    | Exp '++' Exp                                {TmMerge $1 $3}
    | map Exp Exp                                 {TmMap $2 $3}
    | lam '(' var ':' DataType ')' Exp            {TmLambda $3 $5 $7}
    | splitAt Exp Exp                             {TmSplitAt $2 $3}
    | reverse Exp                                 {TmReverse $2}
    | length Exp                                  {TmLength $2}
    | head Exp                                    {TmHead $2}
    | last Exp                                    {TmLast $2}
    | take Exp Exp                                {TmTake $2 $3}
    | sum Exp                                     {TmSum $2}
    | listsArith Exp Exp                          {TmListsArith $2 $3} 
    | Exp '+' Exp                                 {TmAdd $1 $3}
    | Exp '-' Exp                                 {TmSub $1 $3}
    | Exp '*' Exp                                 {TmMult $1 $3}
    | Exp '/' Exp                                 {TmDiv $1 $3}
    | Exp '<' Exp                                 {TmLt $1 $3}
    | Exp '>' Exp                                 {TmGt $1 $3}
    | Exp ';' Exp                                 {TmLine $1 $3}
    | Exp Exp %prec APP                           {TmApp $1 $2}
    | int ',' Exp                                 {TmInts $1 $3}
    | int                                         {TmInt $1}
    | var                                         {TmVar $1}
    | true                                        {TmTrue}
    | false                                       {TmFalse}
    | let var '=' Exp                             { TmLet $2 $4}
    | print Exp                                   {TmPrint $2}
    | end                                         {TmEnd}
    | '(' Exp ')'                                 { $2 }


-- Function : lam '(' var ':' DataType ')' Exp            {TmLambda $3 $5 $7}


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

-- data Function = TmLambda String DataType Expr
--              deriving(Show, Eq)

type TyEnvironment = [ (String, Expr) ]
type Environment = [ (String, Expr) ]


data Expr = TmBody Expr |TmIf Expr Expr Expr | TmInts Int Expr | TmGt Expr Expr | TmLt Expr Expr
            | TmAdd Expr Expr | TmSub Expr Expr | TmMult Expr Expr | TmDiv Expr Expr | TmLine Expr Expr
            | TmGetStream | TmReverse Expr | TmLength Expr | TmInt Int | TmComma  | TmTrue | TmFalse
            | TmPush Int Int Expr | TmHead Expr | TmLast Expr | TmSum Expr | TmTake Expr Expr | TmApp Expr Expr | TmLambda String DataType Expr
            | TmPrint Expr | TmEnd | TmVar String | TmMerge Expr Expr | TmSplitAt Expr Expr | TmDuplicate Expr
            | TmMap Expr Expr |TmListsArith Expr Expr | TmLet String Expr | Cl String DataType Expr Environment

            deriving (Show, Eq)
}
